#!/usr/bin/env bash
#
# anvmv4_config - configure the AstroNvimV4 Neovim configurations
#
# Written by Ronald Record <ronaldrecord@gmail.com>, Spring 2024
#
# shellcheck disable=SC1090,SC2001,SC2002,SC2016,SC2006,SC2086,SC2181,SC2129,SC2059,SC2076

ANVIMV4="nvim-AstroNvimV4"
ASTRDIR="${HOME}/.config/${ANVIMV4}"
LAZYMAN="nvim-Lazyman"
LMANDIR="${HOME}/.config/${LAZYMAN}"
NVIMCONF="${ASTRDIR}/lua/configuration.lua"
CONFBACK="${ASTRDIR}/lua/configuration-orig.lua"
GET_CONF="${LMANDIR}/scripts/get_conf.lua"
FONTDIR="${LMANDIR}/scripts/figlet-fonts"
LOLCAT="lolcat"
BOLD=$(tput bold 2> /dev/null)
NORM=$(tput sgr0 2> /dev/null)

PLEASE="Please enter your choice"
USEGUI=
# Array with font names
fonts=("Slant" "Shadow" "Small" "Script" "Standard")
# Supported themes
themes=("nightfox" "tokyonight" "dracula" "kanagawa" "catppuccin" "tundra" "everforest" "monokai-pro")
# Themes with styles
styled_themes=("nightfox" "tokyonight" "dracula" "kanagawa" "catppuccin" "monokai-pro")
all_lsp_servers=("cssls" "denols" "html" "jsonls" "lua_ls" "pylsp" "bashls"
  "cssmodules_ls" "dockerls" "emmet_ls" "eslint" "gopls" "graphql"
  "jdtls" "julials" "ltex" "marksman" "prismals" "pyright" "sqlls"
  "tailwindcss" "taplo" "texlab" "tsserver" "vimls" "vuels" "yamlls")
have_ccls=$(type -p ccls)
[ "${have_ccls}" ] && all_lsp_servers+=("ccls")
have_clangd=$(type -p clangd)
[ "${have_clangd}" ] && {
  all_lsp_servers+=("clangd")
  all_lsp_servers+=("cmake")
}

all_formatters=("actionlint" "goimports" "golines" "golangci-lint" "gofumpt"
  "debugpy" "isort" "json-lsp" "marksman" "php-debug-adapter" "php-cs-fixer"
  "prettierd" "pyright" "google-java-format" "latexindent" "markdownlint"
  "prettier" "sql-formatter" "shellcheck" "shfmt" "stylua" "tflint" "yamllint")
have_beautysh=$(type -p beautysh)
[ "${have_beautysh}" ] && all_formatters+=("beautysh")
have_black=$(type -p black)
[ "${have_black}" ] && all_formatters+=("black")
have_flake=$(type -p flake8)
[ "${have_flake}" ] && all_formatters+=("flake8")
have_ruff=$(type -p ruff)
[ "${have_ruff}" ] && all_formatters+=("ruff")

lsp_enabled_table=()
for_enabled_table=()
neorg_notes_table=()

SED="sed"
have_gsed=$(type -p gsed)
[ "${have_gsed}" ] && SED="gsed"

usage() {
  printf "\nUsage: anvmv4_config [-d] [-i] [-u]"
  printf "\nWhere:"
  printf "\n    -d specifies debug mode"
  printf "\n    -i indicates initialize conditional plugin configurations and exit"
  printf "\n    -u displays this usage message and exits"
  exit 1
}

prompt_continue() {
  printf "\nPress <Enter> to continue ... "
  read -r yn
}

set_haves() {
  have_fzf=$(type -p fzf)
  have_figlet=$(type -p figlet)
  have_lolcat=$(type -p lolcat)
  have_rich=$(type -p rich)
}

show_figlet() {
  if [ "$1" ]; then
    FIG_TEXT="$1"
  else
    FIG_TEXT="AstroNvimV4"
  fi
  # Seed random generator
  RANDOM=$$$(date +%s)
  USE_FONT=${fonts[$RANDOM % ${#fonts[@]}]}
  [ "${USE_FONT}" ] || USE_FONT="standard"
  if [ "${have_lolcat}" ]; then
    figlet -c -d "${FONTDIR}" -f "${USE_FONT}" -k -t ${FIG_TEXT} 2> /dev/null | ${LOLCAT}
  else
    figlet -c -d "${FONTDIR}" -f "${USE_FONT}" -k -t ${FIG_TEXT} 2> /dev/null
  fi
}

get_conf_value() {
  confname="$1"
  confval=$(NVIM_APPNAME="${ANVIMV4}" nvim -l ${GET_CONF} ${confname} 2>&1)
  echo "${confval}"
}

set_conf_value() {
  confname="$1"
  confval="$2"
  grep "conf.${confname} =" "${NVIMCONF}" > /dev/null && {
    case ${confval} in
      true | false | [0-9])
        cat "${NVIMCONF}" \
          | ${SED} -e "s/conf.${confname} =.*/conf.${confname} = ${confval}/" > /tmp/nvim$$
        ;;
      *)
        cat "${NVIMCONF}" \
          | ${SED} -e "s/conf.${confname} =.*/conf.${confname} = \"${confval}\"/" > /tmp/nvim$$
        ;;
    esac
    cp /tmp/nvim$$ "${NVIMCONF}"
    rm -f /tmp/nvim$$
  }
}

get_conf_table() {
  confname="$1"
  if [ "${confname}" == "lsp_servers" ]; then
    lsp_enabled_table=()
    while read -r val; do
      lsp_enabled_table+=("$val")
    done < <(NVIM_APPNAME="${ANVIMV4}" nvim -l ${GET_CONF} ${confname} 2>&1)
    while read -r val; do
      lsp_enabled_table+=("$val")
    done < <(NVIM_APPNAME="${ANVIMV4}" nvim -l ${GET_CONF} lsp_installed 2>&1)
    enable_ccls=$(get_conf_value enable_ccls)
    if [ "${enable_ccls}" == "true" ]; then
      lsp_enabled_table+=("ccls")
    fi
    enable_clangd=$(get_conf_value enable_clangd)
    if [ "${enable_clangd}" == "true" ]; then
      lsp_enabled_table+=("clangd")
    fi
  else
    if [ "${confname}" == "formatters_linters" ]; then
      for_enabled_table=()
      while read -r val; do
        for_enabled_table+=("$val")
      done < <(NVIM_APPNAME="${ANVIMV4}" nvim -l ${GET_CONF} ${confname} 2>&1)
      while read -r val; do
        for_enabled_table+=("$val")
      done < <(NVIM_APPNAME="${ANVIMV4}" nvim -l ${GET_CONF} "external_formatters" 2>&1)
    else
      if [ "${confname}" == "neorg_notes" ]; then
        neorg_notes_table=()
        while read -r val; do
          neorg_notes_table+=("$val")
        done < <(NVIM_APPNAME="${ANVIMV4}" nvim -l ${GET_CONF} ${confname} 2>&1)
      fi
    fi
  fi
}

set_conf_table() {
  marker="$1"
  confval="$2"
  action="$3"
  case ${confval} in
    ccls)
      case ${action} in
        disable)
          set_conf_value "enable_ccls" "false"
          ;;
        enable)
          set_conf_value "enable_ccls" "true"
          ;;
      esac
      ;;
    clangd)
      case ${action} in
        disable)
          set_conf_value "enable_clangd" "false"
          ;;
        enable)
          set_conf_value "enable_clangd" "true"
          ;;
      esac
      ;;
    *)
      grep "${marker}" "${NVIMCONF}" | grep "${confval}" > /dev/null && {
        case ${action} in
          disable)
            cat "${NVIMCONF}" \
              | ${SED} -E "s/  \"${confval}\",[[:space:]]+--[[:space:]]+${marker}/  -- \"${confval}\", -- ${marker}/" > /tmp/nvim$$
            ;;
          enable)
            cat "${NVIMCONF}" \
              | ${SED} -E "s/-- \"${confval}\",[[:space:]]+--[[:space:]]+${marker}/\"${confval}\", -- ${marker}/" > /tmp/nvim$$
            ;;
        esac
        cp /tmp/nvim$$ "${NVIMCONF}"
        rm -f /tmp/nvim$$
      }
      ;;
  esac
}

set_waka_opt() {
  waka="false"
  [ -f "${HOME}"/.wakatime.cfg ] && {
    grep api_key "${HOME}"/.wakatime.cfg > /dev/null && waka="true"
  }
  set_conf_value "enable_wakatime" "${waka}"
}

select_theme_style() {
  selected_style="${theme_style}"
  case "$1" in
    kanagawa)
      styles=("wave" "dragon" "lotus")
      ;;
    tokyonight)
      styles=("night" "storm" "day" "moon")
      ;;
    catppuccin)
      styles=("latte" "frappe" "macchiato" "mocha" "custom")
      ;;
    dracula)
      styles=("blood" "magic" "soft" "default")
      ;;
    nightfox)
      styles=("carbonfox" "dawnfox" "dayfox" "duskfox" "nightfox" "nordfox" "terafox")
      ;;
    monokai-pro)
      styles=("classic" "octagon" "pro" "machine" "ristretto" "spectrum")
      ;;
    *)
      styles=()
      ;;
  esac
  if [ "${have_fzf}" ]; then
    choice=$(printf "%s\n" "${styles[@]}" | fzf --prompt=" Neovim Theme Style  " --layout=reverse --border --exit-0)
    [ "${choice}" == "${theme_style}" ] || {
      if [[ " ${styles[*]} " =~ " ${choice} " ]]; then
        set_conf_value "theme_style" "${choice}"
      fi
    }
  else
    set_haves
    while true; do
      confmenu=
      [ "$debug" ] || tput reset
      printf "\n"
      if [ "${have_rich}" ]; then
        rich "[cyan]Select Theme Style[/cyan]" -p -a rounded -c -C
      else
        [ "${have_figlet}" ] && show_figlet "Style"
      fi
      printf "\n"
      PS3="${BOLD}${PLEASE} (numeric or text, 'h' for help): ${NORM}"
      options=()
      for sty in "${styles[@]}"; do
        if [ "${theme_style}" == "$sty" ]; then
          options+=("$sty   ")
        else
          options+=("$sty")
        fi
      done
      [ "${theme_style}" == "${selected_style}" ] || {
        options+=("Set style to ${theme_style}")
      }
      [ -f ${HOME}/.config/nvim-LazyIde/lua/configuration.lua ] && {
        options+=("LazyIde Menu")
      }
      [ -f ${HOME}/.config/nvim-Webdev/lua/configuration.lua ] && {
        options+=("Webdev Menu")
      }
      options+=("Lazyman Config")
      options+=("Configuration Menu" "Main Menu" "Quit")
      select opt in "${options[@]}"; do
        case "$opt,$REPLY" in
          "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
            [ "$debug" ] || tput reset
            printf "\n"
            man lazyman
            break
            ;;
          "wave",* | *,"wave")
            theme_style="wave"
            break
            ;;
          "dragon",* | *,"dragon")
            theme_style="dragon"
            break
            ;;
          "lotus",* | *,"lotus")
            theme_style="lotus"
            break
            ;;
          "night",* | *,"night")
            theme_style="night"
            break
            ;;
          "storm",* | *,"storm")
            theme_style="storm"
            break
            ;;
          "dayfox",* | *,"dayfox")
            theme_style="dayfox"
            break
            ;;
          "day",* | *,"day")
            theme_style="day"
            break
            ;;
          "moon",* | *,"moon")
            theme_style="moon"
            break
            ;;
          "onelight",* | *,"onelight")
            theme_style="onelight"
            break
            ;;
          "latte",* | *,"latte")
            theme_style="latte"
            break
            ;;
          "frappe",* | *,"frappe")
            theme_style="frappe"
            break
            ;;
          "macchiato",* | *,"macchiato")
            theme_style="macchiato"
            break
            ;;
          "mocha",* | *,"mocha")
            theme_style="mocha"
            break
            ;;
          "custom",* | *,"custom")
            theme_style="custom"
            break
            ;;
          "blood",* | *,"blood")
            theme_style="blood"
            break
            ;;
          "magic",* | *,"magic")
            theme_style="magic"
            break
            ;;
          "soft",* | *,"soft")
            theme_style="soft"
            break
            ;;
          "default",* | *,"default")
            theme_style="default"
            break
            ;;
          "carbonfox",* | *,"carbonfox")
            theme_style="carbonfox"
            break
            ;;
          "dawnfox",* | *,"dawnfox")
            theme_style="dawnfox"
            break
            ;;
          "duskfox",* | *,"duskfox")
            theme_style="duskfox"
            break
            ;;
          "nightfox",* | *,"nightfox")
            theme_style="nightfox"
            break
            ;;
          "nordfox",* | *,"nordfox")
            theme_style="nordfox"
            break
            ;;
          "terafox",* | *,"terafox")
            theme_style="terafox"
            break
            ;;
          "classic",* | *,"classic")
            theme_style="classic"
            break
            ;;
          "octagon",* | *,"octagon")
            theme_style="octagon"
            break
            ;;
          "pro",* | *,"pro")
            theme_style="pro"
            break
            ;;
          "machine",* | *,"machine")
            theme_style="machine"
            break
            ;;
          "ristretto",* | *,"ristretto")
            theme_style="ristretto"
            break
            ;;
          "Set style to"*,* | *,"Set style to"*)
            set_conf_value "theme_style" "${theme_style}"
            break 2
            ;;
          "Lazyman Config"*,* | *,"Lazyman Config"* | "c",* | *,"c")
            [ "${pluginit}" ] && lazyman -N ${ANVIMV4} init
            exec lazyman -F conf
            ;;
          "LazyIde Menu"*,* | *,"LazyIde Menu"* | "l",* | *,"l")
            [ "${pluginit}" ] && lazyman -N ${ANVIMV4} init
            exit 4
            ;;
          "Webdev Menu"*,* | *,"Webdev Menu"* | "w",* | *,"w")
            [ "${pluginit}" ] && lazyman -N ${ANVIMV4} init
            exit 5
            ;;
          "Configuration Menu"*,* | *,"Configuration Menu"* | "C",* | *,"C")
            confmenu=1
            break 2
            ;;
          "Main Menu"*,* | *,"Main Menu"* | "m",* | *,"m")
            [ "${pluginit}" ] && lazyman -N ${ANVIMV4} init
            exit 2
            ;;
          "Quit"*,* | *,"Quit"* | "quit"*,* | *,"quit"* | "q",* | *,"q")
            [ "${pluginit}" ] && lazyman -N ${ANVIMV4} init
            printf "\nExiting AstroNvimV4 Configuration Menu System\n\n"
            exit 3
            ;;
        esac
        REPLY=
      done
    done
    [ "${confmenu}" ] && show_conf_menu
  fi
}

set_default_style() {
  case "$1" in
    kanagawa)
      set_conf_value "theme_style" "dragon"
      ;;
    tokyonight)
      set_conf_value "theme_style" "moon"
      ;;
    catppuccin)
      set_conf_value "theme_style" "mocha"
      ;;
    dracula)
      set_conf_value "theme_style" "soft"
      ;;
    nightfox)
      set_conf_value "theme_style" "carbonfox"
      ;;
    monokai-pro)
      set_conf_value "theme_style" "pro"
      ;;
    *)
      set_conf_value "theme_style" "none"
      ;;
  esac
}

select_theme() {
  selected_theme="$1"
  if [ "${have_fzf}" ]; then
    theme=$(printf "%s\n" "${themes[@]}" | fzf --prompt=" Neovim Theme  " --layout=reverse --border --exit-0)
    [ "${theme}" == "${selected_theme}" ] || {
      if [[ " ${themes[*]} " =~ " ${theme} " ]]; then
        set_conf_value "theme" "${theme}"
        set_default_style "${theme}"
      fi
    }
  else
    set_haves
    while true; do
      confmenu=
      [ "$debug" ] || tput reset
      printf "\n"
      if [ "${have_rich}" ]; then
        rich "[cyan]Select Theme[/cyan]" -p -a rounded -c -C
      else
        [ "${have_figlet}" ] && show_figlet "Theme"
      fi
      printf "\n"
      PS3="${BOLD}${PLEASE} (numeric or text, 'h' for help): ${NORM}"
      options=()
      for thm in "${themes[@]}"; do
        if [ "${theme}" == "$thm" ]; then
          options+=("$thm   ")
        else
          options+=("$thm")
        fi
      done
      [ "${theme}" == "${selected_theme}" ] || {
        options+=("Set theme to ${theme}")
      }
      [ -f ${HOME}/.config/nvim-LazyIde/lua/configuration.lua ] && {
        options+=("LazyIde Menu")
      }
      [ -f ${HOME}/.config/nvim-Webdev/lua/configuration.lua ] && {
        options+=("Webdev Menu")
      }
      options+=("Lazyman Config")
      options+=("Configuration Menu" "Main Menu" "Quit")
      select opt in "${options[@]}"; do
        case "$opt,$REPLY" in
          "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
            [ "$debug" ] || tput reset
            printf "\n"
            man lazyman
            break
            ;;
          "nightfox"*,* | *,"nightfox"*)
            theme="nightfox"
            break
            ;;
          "tokyonight"*,* | *,"tokyonight"*)
            theme="tokyonight"
            break
            ;;
          "dracula"*,* | *,"dracula"*)
            theme="dracula"
            break
            ;;
          "kanagawa"*,* | *,"kanagawa"*)
            theme="kanagawa"
            break
            ;;
          "catppuccin"*,* | *,"catppuccin"*)
            theme="catppuccin"
            break
            ;;
          "tundra"*,* | *,"tundra"*)
            theme="tundra"
            break
            ;;
          "everforest"*,* | *,"everforest"*)
            theme="everforest"
            break
            ;;
          "monokai-pro"*,* | *,"monokai-pro"*)
            theme="monokai-pro"
            break
            ;;
          "Set theme to"*,* | *,"Set theme to"*)
            set_conf_value "theme" "${theme}"
            set_default_style "${theme}"
            break 2
            ;;
          "Lazyman Config"*,* | *,"Lazyman Config"* | "c",* | *,"c")
            [ "${pluginit}" ] && lazyman -N ${ANVIMV4} init
            exec lazyman -F conf
            ;;
          "LazyIde Menu"*,* | *,"LazyIde Menu"* | "l",* | *,"l")
            [ "${pluginit}" ] && lazyman -N ${ANVIMV4} init
            exit 4
            ;;
          "Webdev Menu"*,* | *,"Webdev Menu"* | "w",* | *,"w")
            [ "${pluginit}" ] && lazyman -N ${ANVIMV4} init
            exit 5
            ;;
          "Configuration Menu"*,* | *,"Configuration Menu"* | "C",* | *,"C")
            confmenu=1
            break 2
            ;;
          "Main Menu"*,* | *,"Main Menu"* | "m",* | *,"m")
            [ "${pluginit}" ] && lazyman -N ${ANVIMV4} init
            exit 2
            ;;
          "Quit"*,* | *,"Quit"* | "quit"*,* | *,"quit"* | "q",* | *,"q")
            [ "${pluginit}" ] && lazyman -N ${ANVIMV4} init
            printf "\nExiting AstroNvimV4 Configuration Menu System\n\n"
            exit 3
            ;;
        esac
        REPLY=
      done
    done
  fi
  [ "${confmenu}" ] && show_conf_menu
}

show_plug_help() {
  if [ "${have_rich}" ]; then
    rich "[cyan]AstroNvimV4 Plugins Menu Help[/cyan]" -p -a rounded -c -C
  else
    printf "\n\tAstroNvimV4 Plugins Menu Help\n"
  fi
  printf "\nEnable and disable installed Neovim plugins and plugin configuration."
  printf "\nEnabled plugins and plugin configurations are indicated with a []"
  printf "\nDisabled plugins and plugin configurations are indicated with a [✗]\n"
  printf "\nSettings in this menu only effect the AstroNvimV4 Neovim configuration in:"
  printf "\n\t${HOME}/.config/${ANVIMV4}\n"
  prompt_continue
}

show_plugin_menu() {
  set_haves
  while true; do
    mainmenu=
    confmenu=
    lspmenu=
    formenu=
    [ -f ${GET_CONF} ] || {
      printf "\n\nWARNING: missing ${GET_CONF}"
      printf "\nUnable to modify configuration from this menu"
      printf "\nYou may need to update or re-install AstroNvimV4"
      prompt_continue
      mainmenu=1
      break
    }
    [ "$debug" ] || tput reset
    if [ "${have_rich}" ]; then
      rich "[b cyan]AstroNvimV4 Plugins Configuration Menu[/]" -p -a rounded -c -C
      rich "[b green]Manage the Neovim plugins enabled in[/] [b yellow]~/.config/${ANVIMV4}[/]" -p -c
    else
      [ "${have_figlet}" ] && show_figlet "Plugins"
    fi
    printf '\n'
    enable_community=$(get_conf_value enable_community)
    if [ "${enable_community}" == "true" ]; then
      use_community=""
      enable_community_rust=$(get_conf_value enable_community_rust)
      if [ "${enable_community_rust}" == "true" ]; then
        use_community_rust=""
      else
        use_community_rust="✗"
      fi
      enable_community_markdown=$(get_conf_value enable_community_markdown)
      if [ "${enable_community_markdown}" == "true" ]; then
        use_community_markdown=""
      else
        use_community_markdown="✗"
      fi
      enable_community_json=$(get_conf_value enable_community_json)
      if [ "${enable_community_json}" == "true" ]; then
        use_community_json=""
      else
        use_community_json="✗"
      fi
      enable_community_yaml=$(get_conf_value enable_community_yaml)
      if [ "${enable_community_yaml}" == "true" ]; then
        use_community_yaml=""
      else
        use_community_yaml="✗"
      fi
      enable_community_ps1=$(get_conf_value enable_community_ps1)
      if [ "${enable_community_ps1}" == "true" ]; then
        use_community_ps1=""
      else
        use_community_ps1="✗"
      fi
      enable_community_lua=$(get_conf_value enable_community_lua)
      if [ "${enable_community_lua}" == "true" ]; then
        use_community_lua=""
      else
        use_community_lua="✗"
      fi
      enable_community_python_ruff=$(get_conf_value enable_community_python_ruff)
      if [ "${enable_community_python_ruff}" == "true" ]; then
        use_community_python_ruff=""
      else
        use_community_python_ruff="✗"
      fi
      enable_community_bash=$(get_conf_value enable_community_bash)
      if [ "${enable_community_bash}" == "true" ]; then
        use_community_bash=""
      else
        use_community_bash="✗"
      fi
      enable_community_html_css=$(get_conf_value enable_community_html_css)
      if [ "${enable_community_html_css}" == "true" ]; then
        use_community_html_css=""
      else
        use_community_html_css="✗"
      fi
      enable_community_typescript=$(get_conf_value enable_community_typescript)
      if [ "${enable_community_typescript}" == "true" ]; then
        use_community_typescript=""
      else
        use_community_typescript="✗"
      fi
      enable_community_angular=$(get_conf_value enable_community_angular)
      if [ "${enable_community_angular}" == "true" ]; then
        use_community_angular=""
      else
        use_community_angular="✗"
      fi
      enable_community_cpp=$(get_conf_value enable_community_cpp)
      if [ "${enable_community_cpp}" == "true" ]; then
        use_community_cpp=""
      else
        use_community_cpp="✗"
      fi
      enable_community_cmake=$(get_conf_value enable_community_cmake)
      if [ "${enable_community_cmake}" == "true" ]; then
        use_community_cmake=""
      else
        use_community_cmake="✗"
      fi
    else
      use_community="✗"
      use_community_rust="✗"
      use_community_markdown="✗"
      use_community_json="✗"
      use_community_yaml="✗"
      use_community_ps1="✗"
      use_community_lua="✗"
      use_community_python_ruff="✗"
      use_community_bash="✗"
      use_community_html_css="✗"
      use_community_typescript="✗"
      use_community_angular="✗"
      use_community_cpp="✗"
      use_community_cmake="✗"
    fi
    enable_toggleterm=$(get_conf_value enable_toggleterm)
    if [ "${enable_toggleterm}" == "true" ]; then
      use_toggleterm=""
    else
      use_toggleterm="✗"
    fi
    enable_cheatsheet=$(get_conf_value enable_cheatsheet)
    if [ "${enable_cheatsheet}" == "true" ]; then
      use_cheatsheet=""
    else
      use_cheatsheet="✗"
    fi
    enable_context=$(get_conf_value enable_treesitter_context)
    if [ "${enable_context}" == "true" ]; then
      use_context=""
    else
      use_context="✗"
    fi
    enable_smooth_scrolling=$(get_conf_value enable_smooth_scrolling)
    if [ "${enable_smooth_scrolling}" == "true" ]; then
      use_smooth_scrolling=""
    else
      use_smooth_scrolling="✗"
    fi
    enable_neotest=$(get_conf_value enable_neotest)
    if [ "${enable_neotest}" == "true" ]; then
      use_neotest=""
    else
      use_neotest="✗"
    fi
    enable_wakatime=$(get_conf_value enable_wakatime)
    if [ "${enable_wakatime}" == "true" ]; then
      use_wakatime=""
    else
      use_wakatime="✗"
    fi
    obsidian_vault=$(get_conf_value obsidian_vault)
    use_obsidian_vault=$(basename "${obsidian_vault}")
    get_conf_table neorg_notes
    num_neorg_notes=${#neorg_notes_table[@]}
    PS3="${BOLD}${PLEASE} (numeric or text, 'h' for help): ${NORM}"
    options=()
    options+=("Cheatsheets   [${use_cheatsheet}]")
    options+=("Community     [${use_community}]")
    [ "${enable_community}" == "true" ] && {
      options+=("  Angular     [${use_community_angular}]")
      options+=("  Bash        [${use_community_bash}]")
      options+=("  Cmake       [${use_community_cmake}]")
      options+=("  Cpp         [${use_community_cpp}]")
      options+=("  Html CSS    [${use_community_html_css}]")
      options+=("  Json        [${use_community_json}]")
      options+=("  Lua         [${use_community_lua}]")
      options+=("  Markdown    [${use_community_markdown}]")
      options+=("  PS1         [${use_community_ps1}]")
      options+=("  Python Ruff [${use_community_python_ruff}]")
      options+=("  Rust        [${use_community_rust}]")
      options+=("  Typescript  [${use_community_typescript}]")
      options+=("  Yaml        [${use_community_yaml}]")
    }
    [ ${num_neorg_notes} -lt 4 ] && {
      options+=("Neorg Notes  [add]")
    }
    options+=("Obsidian [${use_obsidian_vault}]")
    options+=("Smooth Scroll [${use_smooth_scrolling}]")
    options+=("Toggle Term   [${use_toggleterm}]")
    options+=("Enable Tests  [${use_neotest}]")
    options+=("Tree Context  [${use_context}]")
    options+=("WakaTime      [${use_wakatime}]")
    options+=("Disable All")
    options+=("Enable All")
    [ -f ${CONFBACK} ] && {
      diff ${CONFBACK} ${NVIMCONF} > /dev/null || options+=("Reset to Defaults")
    }
    [ -d "${LMANDIR}" ] && options+=("Open Lazyman")
    options+=("Formatters")
    options+=("LSP Servers")
    options+=("Config Menu")
    options+=("Main Menu")
    options+=("Quit")
    select opt in "${options[@]}"; do
      case "$opt,$REPLY" in
        "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
          [ "$debug" ] || tput reset
          show_plug_help
          break
          ;;
        "Cheatsheets"*,* | *,"Cheatsheets"*)
          if [ "${enable_cheatsheet}" == "true" ]; then
            set_conf_value "enable_cheatsheet" "false"
          else
            set_conf_value "enable_cheatsheet" "true"
          fi
          pluginit=1
          break
          ;;
        "Community"*,* | *,"Community"*)
          if [ "${enable_community}" == "true" ]; then
            set_conf_value "enable_community" "false"
          else
            set_conf_value "enable_community" "true"
          fi
          pluginit=1
          break
          ;;
        "  Angular"*,* | *,"  Angular"*)
          if [ "${enable_community_angular}" == "true" ]; then
            set_conf_value "enable_community_angular" "false"
          else
            set_conf_value "enable_community_angular" "true"
          fi
          pluginit=1
          break
          ;;
        "  Bash"*,* | *,"  Bash"*)
          if [ "${enable_community_bash}" == "true" ]; then
            set_conf_value "enable_community_bash" "false"
          else
            set_conf_value "enable_community_bash" "true"
          fi
          pluginit=1
          break
          ;;
        "  Cmake"*,* | *,"  Cmake"*)
          if [ "${enable_community_cmake}" == "true" ]; then
            set_conf_value "enable_community_cmake" "false"
          else
            set_conf_value "enable_community_cmake" "true"
          fi
          pluginit=1
          break
          ;;
        "  Cpp"*,* | *,"  Cpp"*)
          if [ "${enable_community_cpp}" == "true" ]; then
            set_conf_value "enable_community_cpp" "false"
          else
            set_conf_value "enable_community_cpp" "true"
          fi
          pluginit=1
          break
          ;;
        "  Html CSS"*,* | *,"  Html CSS"*)
          if [ "${enable_community_html_css}" == "true" ]; then
            set_conf_value "enable_community_html_css" "false"
          else
            set_conf_value "enable_community_html_css" "true"
          fi
          pluginit=1
          break
          ;;
        "  Json"*,* | *,"  Json"*)
          if [ "${enable_community_json}" == "true" ]; then
            set_conf_value "enable_community_json" "false"
          else
            set_conf_value "enable_community_json" "true"
          fi
          pluginit=1
          break
          ;;
        "  Lua"*,* | *,"  Lua"*)
          if [ "${enable_community_lua}" == "true" ]; then
            set_conf_value "enable_community_lua" "false"
          else
            set_conf_value "enable_community_lua" "true"
          fi
          pluginit=1
          break
          ;;
        "  Markdown"*,* | *,"  Markdown"*)
          if [ "${enable_community_markdown}" == "true" ]; then
            set_conf_value "enable_community_markdown" "false"
          else
            set_conf_value "enable_community_markdown" "true"
          fi
          pluginit=1
          break
          ;;
        "  PS1"*,* | *,"  PS1"*)
          if [ "${enable_community_ps1}" == "true" ]; then
            set_conf_value "enable_community_ps1" "false"
          else
            set_conf_value "enable_community_ps1" "true"
          fi
          pluginit=1
          break
          ;;
        "  Python Ruff"*,* | *,"  Python Ruff"*)
          if [ "${enable_community_python_ruff}" == "true" ]; then
            set_conf_value "enable_community_python_ruff" "false"
          else
            set_conf_value "enable_community_python_ruff" "true"
          fi
          pluginit=1
          break
          ;;
        "  Rust"*,* | *,"  Rust"*)
          if [ "${enable_community_rust}" == "true" ]; then
            set_conf_value "enable_community_rust" "false"
          else
            set_conf_value "enable_community_rust" "true"
          fi
          pluginit=1
          break
          ;;
        "  Typescript"*,* | *,"  Typescript"*)
          if [ "${enable_community_typescript}" == "true" ]; then
            set_conf_value "enable_community_typescript" "false"
          else
            set_conf_value "enable_community_typescript" "true"
          fi
          pluginit=1
          break
          ;;
        "  Yaml"*,* | *,"  Yaml"*)
          if [ "${enable_community_yaml}" == "true" ]; then
            set_conf_value "enable_community_yaml" "false"
          else
            set_conf_value "enable_community_yaml" "true"
          fi
          pluginit=1
          break
          ;;
        "Neorg Note"*,* | *,"Neorg Note"*)
          printf "\n\nCurrent Neorg notes location(s):"
          for notedir in "${neorg_notes_table[@]}"; do
            printf "\n\t$notedir"
          done
          printf "\nEnter the full pathname to a new Neorg notes folder."
          printf "\nPress <Enter> to continue using existing folder(s).\n"
          while true; do
            read -r -p "Neorg notes location: " notes
            case $notes in
              "")
                break
                ;;
              *)
                if [ -d "${notes}" ]; then
                  case ${num_neorg_notes} in
                    0 | 1)
                      neorg_temp="XXXXX"
                      ;;
                    2)
                      neorg_temp="YYYYY"
                      ;;
                    3)
                      neorg_temp="ZZZZZ"
                      ;;
                    *)
                      neorg_temp=
                      ;;
                  esac
                  [ "${neorg_temp}" ] && {
                    cat "${NVIMCONF}" \
                      | ${SED} -e "s/${neorg_temp}/${notes}/" > /tmp/nvim$$
                    cp /tmp/nvim$$ "${NVIMCONF}"
                    rm -f /tmp/nvim$$
                    set_conf_table "NEORG_NOTES" "${notes}" "enable"
                  }
                  break
                else
                  printf "\n${notes} does not exist or is not a directory."
                  printf "\nEnter the full path to a Neorg notes folder, or"
                  printf "\npress <Enter> to retain the current setting.\n"
                fi
                ;;
            esac
          done
          break
          ;;
        "Obsidian"*,* | *,"Obsidian"*)
          printf "\n\nCurrent Obsidian Vault location: ${obsidian_vault}"
          printf "\nEnter the full pathname to the Obsidian vault."
          printf "\nPress <Enter> to continue using existing vault.\n"
          while true; do
            read -r -p "Obsidian vault location: " vault
            case $vault in
              "")
                break
                ;;
              *)
                if [ -d "${vault}" ]; then
                  set_conf_value "obsidian_vault" "${vault}"
                  break
                else
                  printf "\n${vault} does not exist or is not a directory."
                  printf "\nEnter the full path to an Obsidian folder, or"
                  printf "\npress <Enter> to retain the current setting.\n"
                fi
                ;;
            esac
          done
          break
          ;;
        "Smooth Scroll"*,* | *,"Smooth Scroll"*)
          if [ "${enable_smooth_scrolling}" == "true" ]; then
            set_conf_value "enable_smooth_scrolling" "false"
          else
            set_conf_value "enable_smooth_scrolling" "true"
          fi
          pluginit=1
          break
          ;;
        "Toggle Term"*,* | *,"Toggle Term"*)
          if [ "${enable_toggleterm}" == "true" ]; then
            set_conf_value "enable_toggleterm" "false"
          else
            set_conf_value "enable_toggleterm" "true"
          fi
          pluginit=1
          break
          ;;
        "Enable Test"*,* | *,"Enable Test"*)
          if [ "${enable_neotest}" == "true" ]; then
            set_conf_value "enable_neotest" "false"
          else
            set_conf_value "enable_neotest" "true"
          fi
          pluginit=1
          break
          ;;
        "Tree Context"*,* | *,"Tree Context"*)
          if [ "${enable_context}" == "true" ]; then
            set_conf_value "enable_treesitter_context" "false"
          else
            set_conf_value "enable_treesitter_context" "true"
          fi
          pluginit=1
          break
          ;;
        "WakaTime"*,* | *,"WakaTime"*)
          if [ "${enable_wakatime}" == "true" ]; then
            set_conf_value "enable_wakatime" "false"
          else
            if [ -f "${HOME}"/.wakatime.cfg ]; then
              set_conf_value "enable_wakatime" "true"
            else
              printf "\nIt appears you do not have a configured WakaTime API key."
              printf "\nWould you like to proceed with enabling WakaTime?\n"
              while true; do
                read -r -p "Enable WakaTime (API key required) ? (y/n) " yn
                case $yn in
                  [Yy]*)
                    set_conf_value "enable_wakatime" "true"
                    break
                    ;;
                  [Nn]*)
                    break
                    ;;
                  *)
                    printf "\nPlease answer yes or no.\n"
                    ;;
                esac
              done
            fi
          fi
          pluginit=1
          break
          ;;
        "Disable All"*,* | *,"Disable All"*)
          set_conf_value "enable_community" "false"
          set_conf_value "enable_toggleterm" "false"
          set_conf_value "enable_neotest" "false"
          set_conf_value "enable_wakatime" "false"
          set_conf_value "enable_treesitter_context" "false"
          pluginit=1
          break
          ;;
        "Enable All"*,* | *,"Enable All"*)
          set_conf_value "enable_community" "true"
          set_conf_value "enable_community_rust" "true"
          set_conf_value "enable_community_markdown" "true"
          set_conf_value "enable_community_json" "true"
          set_conf_value "enable_community_yaml" "true"
          set_conf_value "enable_community_ps1" "true"
          set_conf_value "enable_community_lua" "true"
          set_conf_value "enable_community_python_ruff" "true"
          set_conf_value "enable_community_bash" "true"
          set_conf_value "enable_community_html_css" "true"
          set_conf_value "enable_community_typescript" "true"
          set_conf_value "enable_community_angular" "true"
          set_conf_value "enable_community_cpp" "true"
          set_conf_value "enable_community_cmake" "true"
          set_conf_value "enable_toggleterm" "true"
          set_conf_value "enable_neotest" "true"
          set_conf_value "enable_treesitter_context" "true"
          [ -f "${HOME}"/.wakatime.cfg ] && set_conf_value "enable_wakatime" "true"
          pluginit=1
          break
          ;;
        "Reset"*,* | *,"Reset"*)
          [ -f ${CONFBACK} ] && {
            cp ${CONFBACK} ${NVIMCONF}
            set_waka_opt
            pluginit=1
          }
          break
          ;;
        "Open Lazyman",* | *,"Open Lazyman" | "o",* | *,"o")
          if [ "${USEGUI}" ]; then
            NVIM_APPNAME="${LAZYMAN}" neovide
          else
            NVIM_APPNAME="${LAZYMAN}" nvim
          fi
          break
          ;;
        "Config Menu"*,* | *,"Config Menu"* | "c",* | *,"c")
          confmenu=1
          break 2
          ;;
        "Formatters"*,* | *,"Formatters"* | "f",* | *,"f")
          formenu=1
          break 2
          ;;
        "LSP Servers"*,* | *,"LSP Servers"* | "l",* | *,"l")
          lspmenu=1
          break 2
          ;;
        "Main Menu"*,* | *,"Main Menu"* | "m",* | *,"m")
          [ "${pluginit}" ] && lazyman -N ${LAZYMAN} init
          mainmenu=1
          break 2
          ;;
        "Quit"*,* | *,"Quit"* | "quit"*,* | *,"quit"* | "q",* | *,"q")
          [ "${pluginit}" ] && lazyman -N ${LAZYMAN} init
          printf "\nExiting AstroNvimV4 Configuration Menu System\n\n"
          exit 3
          ;;
        *,*)
          printf "\nNo matching menu item located."
          printf "\nSelection out of range or malformed."
          prompt_continue
          break
          ;;
      esac
      REPLY=
    done
  done
  [ "${confmenu}" ] && show_conf_menu
  [ "${mainmenu}" ] && exit 2
  [ "${lspmenu}" ] && show_lsp_menu
  [ "${formenu}" ] && show_formlint_menu
}

show_lsp_help() {
  if [ "${have_rich}" ]; then
    rich "[cyan]AstroNvimV4 LSP Servers Menu Help[/cyan]" -p -a rounded -c -C
  else
    printf "\n\tAstroNvimV4 LSP Servers Menu Help\n"
  fi
  printf "\nEnable and disable installed Neovim language servers."
  printf "\nEnabled language servers are indicated with a []"
  printf "\nDisabled language servers are indicated with a [✗]\n"
  printf "\nThe Language Server Protocol (LSP) is an open protocol for use between"
  printf "\nsource code editors or integrated development environments (IDEs) and"
  printf "\nservers that provide programming language-specific features like code"
  printf "\ncompletion, syntax highlighting and marking of warnings and errors,"
  printf "\nas well as refactoring routines.\n"
  printf "\nSettings in this menu only effect the AstroNvimV4 Neovim configuration in:"
  printf "\n\t${HOME}/.config/${ANVIMV4}\n"
  prompt_continue
}

show_lsp_menu() {
  set_haves
  while true; do
    mainmenu=
    confmenu=
    plugmenu=
    formmenu=
    [ -f ${GET_CONF} ] || {
      printf "\n\nWARNING: missing ${GET_CONF}"
      printf "\nUnable to modify configuration from this menu"
      printf "\nYou may need to update or re-install Lazyman"
      prompt_continue
      mainmenu=1
      break
    }
    [ "$debug" ] || tput reset
    if [ "${have_rich}" ]; then
      rich "[cyan]AstroNvimV4 LSP Servers Menu[/cyan]" -p -a rounded -c -C
      rich "[b green]Enable/Disable LSP servers used by[/] [b yellow]~/.config/${ANVIMV4}[/]" -p -c
    else
      [ "${have_figlet}" ] && show_figlet "LSP Menu"
    fi
    printf '\n'
    get_conf_table lsp_servers
    PS3="${BOLD}${PLEASE} (numeric or text, 'h' for help): ${NORM}"
    options=()
    readarray -t lsp_sorted < <(printf '%s\0' "${all_lsp_servers[@]}" | sort -z | xargs -0n1)
    for lsp in "${lsp_sorted[@]}"; do
      len=${#lsp}
      numsp=$((14 - len))
      [ ${numsp} -lt 0 ] && numsp=0
      longlsp="${lsp}"
      while [ ${numsp} -gt 0 ]; do
        longlsp="${longlsp} "
        ((numsp -= 1))
      done
      if echo "${lsp_enabled_table[@]}" | grep -qw "$lsp" > /dev/null; then
        options+=("${longlsp} []")
      else
        options+=("${longlsp} [✗]")
      fi
    done
    options+=("Disable All")
    options+=("Enable All")
    options+=("Formatters Menu")
    options+=("Plugins Menu")
    options+=("Config Menu")
    options+=("Main Menu")
    options+=("Quit")
    select opt in "${options[@]}"; do
      case "$opt,$REPLY" in
        "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
          [ "$debug" ] || tput reset
          show_lsp_help
          break
          ;;
        "Disable All"*,* | *,"Disable All"*)
          for lsp in "${all_lsp_servers[@]}"; do
            set_conf_table "LSP_SERVERS" "${lsp}" "disable"
          done
          pluginit=1
          break
          ;;
        "Enable All"*,* | *,"Enable All"*)
          for lsp in "${all_lsp_servers[@]}"; do
            set_conf_table "LSP_SERVERS" "${lsp}" "enable"
          done
          pluginit=1
          break
          ;;
        "Formatters Menu"*,* | *,"Formatters Menu"* | "f",* | *,"f")
          formmenu=1
          break 2
          ;;
        "Config Menu"*,* | *,"Config Menu"* | "c",* | *,"c")
          confmenu=1
          break 2
          ;;
        "Plugins Menu"*,* | *,"Plugins Menu"* | "p",* | *,"p")
          plugmenu=1
          break 2
          ;;
        "Main Menu"*,* | *,"Main Menu"* | "m",* | *,"m")
          [ "${pluginit}" ] && lazyman -N ${LAZYMAN} init
          mainmenu=1
          break 2
          ;;
        "Quit"*,* | *,"Quit"* | "quit"*,* | *,"quit"* | "q",* | *,"q")
          [ "${pluginit}" ] && lazyman -N ${LAZYMAN} init
          printf "\nExiting AstroNvimV4 Configuration Menu System\n\n"
          exit 3
          ;;
        *,*)
          enable=
          if [ "${opt}" ]; then
            lspname=$(echo "${opt}" | awk ' { print $1 } ')
          else
            lspname=$(echo "${REPLY}" | awk ' { print $1 } ')
          fi
          grep "LSP_SERVERS" "${NVIMCONF}" | grep "\-\- \"${lspname}" > /dev/null && enable=1
          if [ "${lspname}" == "tsserver" ]; then
            if [ "${enable}" ]; then
              set_conf_table "LSP_SERVERS" "${lspname}" "enable"
            else
              set_conf_table "LSP_SERVERS" "${lspname}" "disable"
            fi
          else
            # Only one of pyright and pylsp
            case "${lspname}" in
              pylsp)
                if [ "${enable}" ]; then
                  set_conf_table "LSP_SERVERS" "${lspname}" "enable"
                  set_conf_table "LSP_SERVERS" "pyright" "disable"
                else
                  set_conf_table "LSP_SERVERS" "${lspname}" "disable"
                fi
                ;;
              pyright)
                if [ "${enable}" ]; then
                  set_conf_table "LSP_SERVERS" "${lspname}" "enable"
                  set_conf_table "LSP_SERVERS" "pylsp" "disable"
                else
                  set_conf_table "LSP_SERVERS" "${lspname}" "disable"
                fi
                ;;
              *)
                if [ "${enable}" ]; then
                  set_conf_table "LSP_SERVERS" "${lspname}" "enable"
                else
                  set_conf_table "LSP_SERVERS" "${lspname}" "disable"
                fi
                ;;
            esac
          fi
          pluginit=1
          break
          ;;
      esac
      REPLY=
    done
  done
  [ "${mainmenu}" ] && exit 2
  [ "${confmenu}" ] && show_conf_menu
  [ "${plugmenu}" ] && show_plugin_menu
  [ "${formmenu}" ] && show_formlint_menu
}

show_form_help() {
  if [ "${have_rich}" ]; then
    rich "[cyan]AstroNvimV4 Formatters and Linters Menu Help[/cyan]" -p -a rounded -c -C
  else
    printf "\n\tAstroNvimV4 Formatters and Linters Menu Help\n"
  fi
  printf "\nEnable and disable installed Neovim formatters and linters."
  printf "\nEnabled formatters and linters are indicated with a []"
  printf "\nDisabled formatters and linters are indicated with a [✗]\n"
  printf "\nThese tools perform code formatting, static code analysis, and flag"
  printf "\nprogramming errors, bugs, stylistic errors and suspicious constructs.\n"
  printf "\nSettings in this menu only effect the AstroNvimV4 Neovim configuration in:"
  printf "\n\t${HOME}/.config/${ANVIMV4}\n"
  prompt_continue
}

show_formlint_menu() {
  set_haves
  while true; do
    mainmenu=
    confmenu=
    plugmenu=
    lspsmenu=
    [ -f ${GET_CONF} ] || {
      printf "\n\nWARNING: missing ${GET_CONF}"
      printf "\nUnable to modify configuration from this menu"
      printf "\nYou may need to update or re-install Lazyman"
      prompt_continue
      mainmenu=1
      break
    }
    [ "$debug" ] || tput reset
    if [ "${have_rich}" ]; then
      rich "[cyan]AstroNvimV4 Formatters and Linters Menu[/cyan]" -p -a rounded -c -C
      rich "[b green]Enable/Disable formatters and linters used by[/] [b yellow]~/.config/${ANVIMV4}[/]" -p -c
    else
      [ "${have_figlet}" ] && show_figlet "Formatters"
    fi
    printf '\n'
    get_conf_table formatters_linters
    PS3="${BOLD}${PLEASE} (numeric or text, 'h' for help): ${NORM}"
    options=()
    readarray -t form_sorted < <(printf '%s\0' "${all_formatters[@]}" | sort -z | xargs -0n1)
    for form in "${form_sorted[@]}"; do
      len=${#form}
      numsp=$((19 - len))
      [ ${numsp} -lt 0 ] && numsp=0
      longform="${form}"
      while [ ${numsp} -gt 0 ]; do
        longform="${longform} "
        ((numsp -= 1))
      done
      if echo "${for_enabled_table[@]}" | grep -qw "$form" > /dev/null; then
        options+=("${longform} []")
      else
        options+=("${longform} [✗]")
      fi
    done
    enable_autoformat=$(get_conf_value enable_autoformat)
    if [ "${enable_autoformat}" == "true" ]; then
      options+=("Auto Format         []")
    else
      options+=("Auto Format         [✗]")
    fi
    options+=("Disable All")
    options+=("Enable All")
    options+=("LSP Servers")
    options+=("Plugins Menu")
    options+=("Config Menu")
    options+=("Main Menu")
    options+=("Quit")
    select opt in "${options[@]}"; do
      case "$opt,$REPLY" in
        "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
          [ "$debug" ] || tput reset
          show_form_help
          break
          ;;
        "Auto Format"*,* | *,"Auto Format"*)
          if [ "${enable_autoformat}" == "true" ]; then
            set_conf_value "enable_autoformat" "false"
          else
            set_conf_value "enable_autoformat" "true"
          fi
          break
          ;;
        "Disable All"*,* | *,"Disable All"*)
          for form in "${all_formatters[@]}"; do
            set_conf_table "FORMATTERS_LINTERS" "${form}" "disable"
          done
          pluginit=1
          break
          ;;
        "Enable All"*,* | *,"Enable All"*)
          for form in "${all_formatters[@]}"; do
            set_conf_table "FORMATTERS_LINTERS" "${form}" "enable"
          done
          pluginit=1
          break
          ;;
        "LSP Servers"*,* | *,"LSP Servers"* | "l",* | *,"l")
          lspsmenu=1
          break 2
          ;;
        "Plugins Menu"*,* | *,"Plugins Menu"* | "p",* | *,"p")
          plugmenu=1
          break 2
          ;;
        "Config Menu"*,* | *,"Config Menu"* | "c",* | *,"c")
          confmenu=1
          break 2
          ;;
        "Main Menu"*,* | *,"Main Menu"* | "m",* | *,"m")
          [ "${pluginit}" ] && lazyman -N ${LAZYMAN} init
          mainmenu=1
          break 2
          ;;
        "Quit"*,* | *,"Quit"* | "quit"*,* | *,"quit"* | "q",* | *,"q")
          [ "${pluginit}" ] && lazyman -N ${LAZYMAN} init
          printf "\nExiting AstroNvimV4 Configuration Menu System\n\n"
          exit 3
          ;;
        *,*)
          enable=
          if [ "${opt}" ]; then
            forname=$(echo "${opt}" | awk ' { print $1 } ')
          else
            forname=$(echo "${REPLY}" | awk ' { print $1 } ')
          fi
          grep "FORMATTERS_LINTERS" "${NVIMCONF}" | grep "\-\- \"${forname}" > /dev/null && enable=1
          if [ "${enable}" ]; then
            set_conf_table "FORMATTERS_LINTERS" "${forname}" "enable"
          else
            set_conf_table "FORMATTERS_LINTERS" "${forname}" "disable"
          fi
          pluginit=1
          break
          ;;
      esac
      REPLY=
    done
  done
  [ "${mainmenu}" ] && exit 2
  [ "${confmenu}" ] && show_conf_menu
  [ "${plugmenu}" ] && show_plugin_menu
  [ "${lspsmenu}" ] && show_lsp_menu
}

show_conf_menu() {
  set_haves
  while true; do
    plugmenu=
    lspmenu=
    formenu=
    [ -f ${GET_CONF} ] || {
      printf "\n\nWARNING: missing ${GET_CONF}"
      printf "\nUnable to modify configuration from this menu"
      printf "\nYou may need to update or re-install AstroNvimV4"
      prompt_continue
      exit 2
    }
    [ "$debug" ] || tput reset
    if [ "${have_rich}" ]; then
      rich "[b cyan]AstroNvimV4 Configuration Menu[/]" -p -a rounded -c -C
      rich "[b green]Manage the Neovim configuration in[/] [b yellow]~/.config/${ANVIMV4}[/]" -p -c
    else
      [ "${have_figlet}" ] && show_figlet "Config"
    fi
    printf '\n'
    theme=$(get_conf_value theme)
    use_theme="${theme}"
    theme_style=$(get_conf_value theme_style)
    use_theme_style="${theme_style}"
    enable_transparent=$(get_conf_value enable_transparent)
    if [ "${enable_transparent}" == "true" ]; then
      use_transparent=""
    else
      use_transparent="✗"
    fi
    mapleader=$(get_conf_value mapleader)
    use_mapleader="${mapleader}"
    maplocalleader=$(get_conf_value maplocalleader)
    use_maplocalleader="${maplocalleader}"
    enable_number=$(get_conf_value number)
    if [ "${enable_number}" == "true" ]; then
      use_number=""
    else
      use_number="✗"
    fi
    enable_relative_number=$(get_conf_value relative_number)
    if [ "${enable_relative_number}" == "true" ]; then
      use_relative_number=""
    else
      use_relative_number="✗"
    fi
    enable_wakatime=$(get_conf_value enable_wakatime)
    if [ "${enable_wakatime}" == "true" ]; then
      use_wakatime=""
    else
      use_wakatime="✗"
    fi
    showtabline=$(get_conf_value showtabline)
    use_showtabline="${showtabline}"
    enable_list=$(get_conf_value list)
    if [ "${enable_list}" == "true" ]; then
      use_list=""
    else
      use_list="✗"
    fi
    show_diagnostics=$(get_conf_value show_diagnostics)
    use_show_diagnostics="${show_diagnostics}"
    enable_zenmode=$(get_conf_value enable_zenmode)
    if [ "${enable_zenmode}" == "true" ]; then
      use_zenmode=""
    else
      use_zenmode="✗"
    fi
    PS3="${BOLD}${PLEASE} (numeric or text, 'h' for help): ${NORM}"
    options=()
    options+=("Diagnostics [${use_show_diagnostics}]")
    options+=("Theme [${use_theme}]")
    if [[ " ${styled_themes[*]} " =~ " ${use_theme} " ]]; then
      options+=(" Style [${use_theme_style}]")
    fi
    options+=(" Transparency [${use_transparent}]")
    options+=("Leader        [${use_mapleader}]")
    options+=("Local Leader  [${use_maplocalleader}]")
    options+=("Number Lines  [${use_number}]")
    options+=("Relative Nums [${use_relative_number}]")
    options+=("List Chars    [${use_list}]")
    options+=("Show tabline  [${use_showtabline}]")
    options+=("WakaTime      [${use_wakatime}]")
    options+=("Zen Mode      [${use_zenmode}]")
    options+=("Disable All")
    options+=("Enable All")
    [ -f ${CONFBACK} ] && {
      diff ${CONFBACK} ${NVIMCONF} > /dev/null || options+=("Reset to Defaults")
    }
    [ -d "${ASTRDIR}" ] && options+=("Open AstroNvimV4")
    options+=("Formatters")
    options+=("LSP Servers")
    options+=("Plugins Menu")
    [ -f ${HOME}/.config/nvim-LazyIde/lua/configuration.lua ] && {
      options+=("LazyIde Menu")
    }
    [ -f ${HOME}/.config/nvim-Webdev/lua/configuration.lua ] && {
      options+=("Webdev Menu")
    }
    options+=("Lazyman Config")
    options+=("Main Menu")
    options+=("Quit")
    select opt in "${options[@]}"; do
      case "$opt,$REPLY" in
        "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
          [ "$debug" ] || tput reset
          printf "\n"
          man lazyman
          break
          ;;
        " Style"*,* | *," Style"*)
          select_theme_style ${theme}
          break
          ;;
        "Theme"*,* | *,"Theme"*)
          select_theme ${theme}
          pluginit=1
          break
          ;;
        " Transparency"*,* | *," Transparency"*)
          if [ "${enable_transparent}" == "true" ]; then
            set_conf_value "enable_transparent" "false"
          else
            set_conf_value "enable_transparent" "true"
          fi
          break
          ;;
        "Leader"*,* | *,"Leader"*)
          if [ "${use_mapleader}" == "," ]; then
            set_conf_value "mapleader" " "
          else
            set_conf_value "mapleader" ","
          fi
          break
          ;;
        "Local Leader"*,* | *,"Local Leader"*)
          if [ "${use_maplocalleader}" == "," ]; then
            set_conf_value "maplocalleader" " "
          else
            set_conf_value "maplocalleader" ","
          fi
          break
          ;;
        "Number Lines"*,* | *,"Number Lines"*)
          if [ "${enable_number}" == "true" ]; then
            set_conf_value "number" "false"
          else
            set_conf_value "number" "true"
          fi
          break
          ;;
        "Relative Num"*,* | *,"Relative Num"*)
          if [ "${enable_relative_number}" == "true" ]; then
            set_conf_value "relative_number" "false"
          else
            set_conf_value "relative_number" "true"
          fi
          break
          ;;
        "List"*,* | *,"List"*)
          if [ "${enable_list}" == "true" ]; then
            set_conf_value "list" "false"
          else
            set_conf_value "list" "true"
          fi
          break
          ;;
        " Showtabline"*,* | *," Showtabline"*)
          choices=("0" "1" "2")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Show tabline (0=never, 1=multiple tabs, 2=always)  " --layout=reverse --border --exit-0)
          [ "${choice}" == "${showtabline}" ] || {
            if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
              set_conf_value "showtabline" "${choice}"
            fi
          }
          break
          ;;
        "Diagnostic"*,* | *,"Diagnostic"*)
          choices=("none" "icons" "popup")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Neovim Diagnostics  " --layout=reverse --border --exit-0)
          [ "${choice}" == "${show_diagnostics}" ] || {
            if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
              set_conf_value "show_diagnostics" "${choice}"
            fi
          }
          break
          ;;
        "WakaTime"*,* | *,"WakaTime"*)
          if [ "${enable_wakatime}" == "true" ]; then
            set_conf_value "enable_wakatime" "false"
          else
            if [ -f "${HOME}"/.wakatime.cfg ]; then
              set_conf_value "enable_wakatime" "true"
            else
              printf "\nIt appears you do not have a configured WakaTime API key."
              printf "\nWould you like to proceed with enabling WakaTime?\n"
              while true; do
                read -r -p "Enable WakaTime (API key required) ? (y/n) " yn
                case $yn in
                  [Yy]*)
                    set_conf_value "enable_wakatime" "true"
                    break
                    ;;
                  [Nn]*)
                    break
                    ;;
                  *)
                    printf "\nPlease answer yes or no.\n"
                    ;;
                esac
              done
            fi
          fi
          pluginit=1
          break
          ;;
        "Zen Mode"*,* | *,"Zen Mode"*)
          if [ "${enable_zenmode}" == "true" ]; then
            set_conf_value "enable_zenmode" "false"
          else
            set_conf_value "enable_zenmode" "true"
          fi
          pluginit=1
          break
          ;;
        "Disable All"*,* | *,"Disable All"*)
          set_conf_value "number" "false"
          set_conf_value "relative_number" "false"
          set_conf_value "enable_wakatime" "false"
          set_conf_value "enable_zenmode" "false"
          set_conf_value "showtabline" "0"
          set_conf_value "enable_transparent" "false"
          set_conf_value "show_diagnostics" "none"
          set_conf_value "list" "false"
          pluginit=1
          break
          ;;
        "Enable All"*,* | *,"Enable All"*)
          set_conf_value "number" "true"
          set_conf_value "relative_number" "true"
          set_conf_value "showtabline" "2"
          set_conf_value "enable_transparent" "true"
          set_conf_value "show_diagnostics" "popup"
          set_conf_value "list" "true"
          set_conf_value "enable_wakatime" "true"
          pluginit=1
          break
          ;;
        "Reset"*,* | *,"Reset"*)
          [ -f ${CONFBACK} ] && {
            cp ${CONFBACK} ${NVIMCONF}
            set_waka_opt
            pluginit=1
          }
          break
          ;;
        "Open AstroNvimV4",* | *,"Open AstroNvimV4" | "o",* | *,"o")
          if [ "${USEGUI}" ]; then
            NVIM_APPNAME="${ANVIMV4}" neovide
          else
            NVIM_APPNAME="${ANVIMV4}" nvim
          fi
          break
          ;;
        "Lazyman Config"*,* | *,"Lazyman Config"* | "c",* | *,"c")
          [ "${pluginit}" ] && lazyman -N ${ANVIMV4} init
          exec lazyman -F conf
          ;;
        "Formatters"*,* | *,"Formatters"* | "f",* | *,"f")
          formenu=1
          break 2
          ;;
        "LSP Servers"*,* | *,"LSP Servers"* | "l",* | *,"l")
          lspmenu=1
          break 2
          ;;
        "Plugins Menu"*,* | *,"Plugins Menu"* | "p",* | *,"p")
          plugmenu=1
          break 2
          ;;
        "LazyIde Menu"*,* | *,"LazyIde Menu"* | "L",* | *,"L")
          [ "${pluginit}" ] && lazyman -N ${ANVIMV4} init
          exit 4
          ;;
        "Main Menu"*,* | *,"Main Menu"* | "m",* | *,"m")
          [ "${pluginit}" ] && lazyman -N ${ANVIMV4} init
          exit 2
          ;;
        "Quit"*,* | *,"Quit"* | "quit"*,* | *,"quit"* | "q",* | *,"q")
          [ "${pluginit}" ] && lazyman -N ${ANVIMV4} init
          printf "\nExiting AstroNvimV4 Configuration Menu System\n\n"
          exit 3
          ;;
        *,*)
          printf "\nNo matching menu item located."
          printf "\nSelection out of range or malformed."
          prompt_continue
          break
          ;;
      esac
      REPLY=
    done
  done
  [ "${plugmenu}" ] && show_plugin_menu
  [ "${lspmenu}" ] && show_lsp_menu
  [ "${formenu}" ] && show_formlint_menu
}

debug=
confmenu=
initplugs=
listnames=
menu="confmenu"
pluginit=
setconf=
toggle=
while getopts "adim:stu" flag; do
  case $flag in
    a)
      listnames=1
      ;;
    d)
      debug=1
      ;;
    i)
      initplugs=1
      ;;
    m)
      menu="${OPTARG}"
      if [ "${menu}" ]; then
        case "${menu}" in
          anvp* | Anvp*)
            menu="plugmenu"
            ;;
          anvl* | Anvl*)
            menu="lspmenu"
            ;;
          anvf* | Anvf*)
            menu="formenu"
            ;;
          anv* | Anv*)
            menu="confmenu"
            ;;
          *)
            menu="main"
            ;;
        esac
      else
        menu="confmenu"
      fi
      ;;
    s)
      setconf=1
      ;;
    t)
      toggle=1
      ;;
    u)
      usage
      ;;
    *)
      printf "\nUnrecognized option. Exiting.\n"
      usage
      ;;
  esac
done
shift $((OPTIND - 1))

set_haves

[ "${toggle}" ] && {
  [ "$1" ] || {
    printf "\nThe -t option requires a configuration name argument."
    usage
  }
  curval=$(get_conf_value "$1")
  case ${curval} in
    true)
      set_conf_value "$1" "false"
      ;;
    false)
      set_conf_value "$1" "true"
      ;;
    onno)
      set_conf_value "$1" "free"
      ;;
    free)
      set_conf_value "$1" "onno"
      ;;
    neo-tree)
      set_conf_value "$1" "nvim-tree"
      ;;
    nvim-tree)
      set_conf_value "$1" "neo-tree"
      ;;
    hop)
      set_conf_value "$1" "leap"
      ;;
    leap)
      set_conf_value "$1" "hop"
      ;;
    persistence)
      set_conf_value "$1" "possession"
      ;;
    possession)
      set_conf_value "$1" "persistence"
      ;;
    preview)
      set_conf_value "$1" "peek"
      ;;
    peek)
      set_conf_value "$1" "preview"
      ;;
    bubble)
      set_conf_value "$1" "arrow"
      ;;
    arrow)
      set_conf_value "$1" "bubble"
      ;;
    *)
      printf "\nUnrecognized configuration toggle: $1\n"
      usage
      ;;
  esac
  [ "${initplugs}" ] || exit 0
}

[ "${listnames}" ] && {
  NVIM_APPNAME="${ANVIMV4}" nvim -l ${GET_CONF} list_names 2>&1
  exit 0
}

[ "${setconf}" ] && {
  [ "$1" ] || {
    printf "\nThe -s option requires configuration name and value arguments."
    usage
  }
  [ "$2" ] || {
    printf "\nThe -s option requires configuration name and value arguments."
    usage
  }
  table=
  [ "$3" ] && table="$3"
  if [ "$1" == "get" ]; then
    get_conf_value "$2"
    exit 0
  else
    if [ "${table}" == "disable" ] || [ "${table}" == "enable" ]; then
      upper=$(echo "$1" | tr '[:lower:]' '[:upper:]')
      set_conf_table "${upper}" "$2" "$3"
    else
      set_conf_value "$1" "$2"
    fi
  fi
  [ "${initplugs}" ] || exit 0
}

[ "${initplugs}" ] && {
  set_waka_opt
  exit 0
}

# Source the Lazyman shell initialization for aliases and nvims selector
# shellcheck source=~/.config/nvim-Lazyman/.lazymanrc
[ -f ~/.config/nvim-Lazyman/.lazymanrc ] && source ~/.config/nvim-Lazyman/.lazymanrc

if [ "$menu" ]; then
  case ${menu} in
    confmenu)
      show_conf_menu
      ;;
    plugmenu)
      show_plugin_menu
      ;;
    lspmenu)
      show_lsp_menu
      ;;
    formenu)
      show_formlint_menu
      ;;
    *)
      show_conf_menu
      ;;
  esac
else
  show_conf_menu
fi

exit 0
