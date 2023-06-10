#!/usr/bin/env bash
#
# lazyman_config - configure the Lazyman Neovim configurations
#
# Written by Ronald Record <ronaldrecord@gmail.com>, Spring 2023
#
# shellcheck disable=SC1090,SC2001,SC2002,SC2016,SC2006,SC2086,SC2181,SC2129,SC2059,SC2076

LAZYMAN="nvim-Lazyman"
LMANDIR="${HOME}/.config/${LAZYMAN}"
NVIMDIRS="${LMANDIR}/.nvimdirs"
NVIMCONF="${LMANDIR}/lua/configuration.lua"
CONFBACK="${LMANDIR}/lua/configuration-orig.lua"
GET_CONF="${LMANDIR}/scripts/get_conf.lua"
LOLCAT="lolcat"
BOLD=$(tput bold 2>/dev/null)
NORM=$(tput sgr0 2>/dev/null)
LINE=$(tput smul 2>/dev/null)

PLEASE="Please enter your choice"
USEGUI=
# Timeout length for nvim headless execution
timeout=120
# Array with font names
fonts=("slant" "shadow" "small" "script" "standard")
# Supported themes
themes=("nightfox" "tokyonight" "dracula" "kanagawa" "catppuccin" "tundra"
        "onedarkpro" "everforest" "monokai-pro")
# Themes with styles
styled_themes=("nightfox" "tokyonight" "dracula" "kanagawa" "catppuccin"
               "onedarkpro" "monokai-pro")

all_lsp_servers=("bashls" "cssmodules_ls" "denols" "dockerls" "eslint" "gopls"
                 "graphql" "html" "jdtls" "jsonls" "julials" "ltex" "lua_ls"
                 "marksman" "pylsp" "pyright" "sqlls" "tailwindcss" "texlab"
                 "tsserver" "vimls" "yamlls")
have_ccls=$(type -p ccls)
[ "${have_ccls}" ] && all_lsp_servers+=("ccls")
have_clangd=$(type -p clangd)
[ "${have_clangd}" ] && all_lsp_servers+=("clangd")

all_formatters=("actionlint" "goimports" "golangci-lint" "gofumpt"
                "google-java-format" "latexindent" "markdownlint"
                "prettier" "sql-formatter" "shellcheck" "shfmt"
                "stylua" "tflint" "yamllint")
have_beautysh=$(type -p beautysh)
[ "${have_beautysh}" ] && all_formatters+=("beautysh")
have_black=$(type -p black)
[ "${have_black}" ] && all_formatters+=("black")
have_ruff=$(type -p ruff)
[ "${have_ruff}" ] && all_formatters+=("ruff")

lsp_enabled_table=()
for_enabled_table=()
neorg_notes_table=()

usage() {
  printf "\nUsage: lazyman_config [-d] [-i] [-m menu] [-u]"
  printf "\nWhere:"
  printf "\n    -d specifies debug mode"
  printf "\n    -i indicates initialize conditional plugin configurations and exit"
  printf "\n    -m 'menu' specifies the menu to display (conf, form, lsp, plugins)"
  printf "\n    -u displays this usage message and exits"
  exit 1
}

prompt_continue() {
  printf "\nPress <Enter> to continue ... "
  read -r yn
}

set_haves() {
  have_fzf=$(type -p fzf)
  have_cargo=$(type -p cargo)
  have_neovide=$(type -p neovide)
  have_figlet=$(type -p figlet)
  have_tscli=$(type -p tree-sitter)
  have_julia=$(type -p julia)
  have_composer=$(type -p composer)
  have_rocks=$(type -p luarocks)
  have_lolcat=$(type -p lolcat)
  have_rich=$(type -p rich)
  have_zoxi=$(type -p zoxide)
}

show_figlet() {
  if [ "$1" ]; then
    FIG_TEXT="$1"
  else
    FIG_TEXT="Lazyman"
  fi
  # Seed random generator
  RANDOM=$$$(date +%s)
  USE_FONT=${fonts[$RANDOM % ${#fonts[@]}]}
  [ "${USE_FONT}" ] || USE_FONT="standard"
  if [ "${have_lolcat}" ]; then
    figlet -c -f "${USE_FONT}" -k -t ${FIG_TEXT} 2>/dev/null | ${LOLCAT}
  else
    figlet -c -f "${USE_FONT}" -k -t ${FIG_TEXT} 2>/dev/null
  fi
}

check_python_version() {
  have_python3=$(type -p python3)
  [ "${have_python3}" ] || {
    echo "NO"
    return 3
  }
  major=$(python3 -c 'import sys; print(sys.version_info.major)')
  if [ ${major} -eq 3 ]
  then
    minor=$(python3 -c 'import sys; print(sys.version_info.minor)')
    if [ ${minor} -ge 9 ]
    then
      echo "OK"
      return 0
    else
      echo "NO"
      return 1
    fi
  else
    echo "NO"
    return 2
  fi
}

get_conf_table() {
  confname="$1"
  if [ "${confname}" == "lsp_servers" ]; then
    lsp_enabled_table=()
    while read -r val; do
      lsp_enabled_table+=("$val")
    done < <(NVIM_APPNAME="nvim-Lazyman" nvim -l ${GET_CONF} ${confname} 2>&1)
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
      done < <(NVIM_APPNAME="nvim-Lazyman" nvim -l ${GET_CONF} ${confname} 2>&1)
      while read -r val; do
        for_enabled_table+=("$val")
      done < <(NVIM_APPNAME="nvim-Lazyman" nvim -l ${GET_CONF} "external_formatters" 2>&1)
    else
      if [ "${confname}" == "neorg_notes" ]; then
        neorg_notes_table=()
        while read -r val; do
          neorg_notes_table+=("$val")
        done < <(NVIM_APPNAME="nvim-Lazyman" nvim -l ${GET_CONF} ${confname} 2>&1)
      fi
    fi
  fi
}

get_conf_value() {
  confname="$1"
  confval=$(NVIM_APPNAME="nvim-Lazyman" nvim -l ${GET_CONF} ${confname} 2>&1)
  echo "${confval}"
}

set_conf_value() {
  confname="$1"
  confval="$2"
  grep "conf.${confname} =" "${NVIMCONF}" >/dev/null && {
    case ${confval} in
      true | false | [0-9])
        cat "${NVIMCONF}" \
          | sed -e "s/conf.${confname} =.*/conf.${confname} = ${confval}/" >/tmp/nvim$$
        ;;
      *)
        cat "${NVIMCONF}" \
          | sed -e "s/conf.${confname} =.*/conf.${confname} = \"${confval}\"/" >/tmp/nvim$$
        ;;
    esac
    cp /tmp/nvim$$ "${NVIMCONF}"
    rm -f /tmp/nvim$$
  }
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
      grep "${marker}" "${NVIMCONF}" | grep "${confval}" >/dev/null && {
        case ${action} in
          disable)
            cat "${NVIMCONF}" \
              | sed -e "s/  \"${confval}\",[[:space:]]\+--[[:space:]]\+${marker}/  -- \"${confval}\", -- ${marker}/" >/tmp/nvim$$
            ;;
          enable)
            cat "${NVIMCONF}" \
              | sed -e "s/-- \"${confval}\",[[:space:]]\+--[[:space:]]\+${marker}/\"${confval}\", -- ${marker}/" >/tmp/nvim$$
            ;;
        esac
        cp /tmp/nvim$$ "${NVIMCONF}"
        rm -f /tmp/nvim$$
      }
      ;;
  esac
}

set_ranger_float() {
  have_ranger=$(type -p ranger)
  [ "${have_ranger}" ] || {
    ranger_float=$(get_conf_value enable_ranger_float)
    [ "${ranger_float}" == "true" ] && {
      set_conf_value "enable_ranger_float" "false"
    }
  }
}

set_waka_opt() {
  waka="false"
  [ -f "${HOME}"/.wakatime.cfg ] && {
    grep api_key "${HOME}"/.wakatime.cfg >/dev/null && waka="true"
  }
  set_conf_value "enable_wakatime" "${waka}"
}

set_code_explain() {
  if [ -f "${HOME}/.codeexplain/model.bin" ]; then
    pyver=$(check_python_version)
    if [ "${pyver}" == "OK" ]
    then
      set_conf_value "enable_codeexplain" "true"
    else
      set_conf_value "enable_codeexplain" "false"
    fi
  else
    set_conf_value "enable_codeexplain" "false"
  fi
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
    onedarkpro)
      styles=("onedark" "onelight" "onedark_vivid" "onedark_dark")
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
      mainmenu=
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
          "onedark",* | *,"onedark")
            theme_style="onedark"
            break
            ;;
          "onelight",* | *,"onelight")
            theme_style="onelight"
            break
            ;;
          "onedark_vivid",* | *,"onedark_vivid")
            theme_style="onedark_vivid"
            break
            ;;
          "onedark_dark",* | *,"onedark_dark")
            theme_style="onedark_dark"
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
          "Configuration Menu"*,* | *,"Configuration Menu"*)
            confmenu=1
            break 2
            ;;
          "Main Menu"*,* | *,"Main Menu"*)
            [ "${pluginit}" ] && lazyman -N nvim-Lazyman init
            mainmenu=1
            break 2
            ;;
          "Quit",* | *,"Quit" | "quit",* | *,"quit")
            [ "${pluginit}" ] && lazyman -N nvim-Lazyman init
            printf "\nExiting Lazyman Configuration Menu System\n\n"
            exit 3
            ;;
        esac
        REPLY=
      done
    done
    [ "${confmenu}" ] && show_conf_menu
    [ "${mainmenu}" ] && exit 2
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
    onedarkpro)
      set_conf_value "theme_style" "onedark_dark"
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
      mainmenu=
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
          "onedarkpro"*,* | *,"onedarkpro"*)
            theme="onedarkpro"
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
          "Configuration Menu"*,* | *,"Configuration Menu"*)
            confmenu=1
            break 2
            ;;
          "Main Menu"*,* | *,"Main Menu"*)
            [ "${pluginit}" ] && lazyman -N nvim-Lazyman init
            mainmenu=1
            break 2
            ;;
          "Quit",* | *,"Quit" | "quit",* | *,"quit")
            [ "${pluginit}" ] && lazyman -N nvim-Lazyman init
            printf "\nExiting Lazyman Configuration Menu System\n\n"
            exit 3
            ;;
        esac
        REPLY=
      done
    done
  fi
  [ "${confmenu}" ] && show_conf_menu
  [ "${mainmenu}" ] && exit 2
}

show_plug_help() {
  if [ "${have_rich}" ]; then
    rich "[cyan]Lazyman Plugins Menu Help[/cyan]" -p -a rounded -c -C
  else
    printf "\n\tLazyman Plugins Menu Help\n"
  fi
  printf "\nEnable and disable installed Neovim plugins and plugin configuration."
  printf "\nEnabled plugins and plugin configurations are indicated with a []"
  printf "\nDisabled plugins and plugin configurations are indicated with a [✗]\n"
  printf "\nSettings in this menu only effect the Lazyman Neovim configuration in:"
  printf "\n\t${HOME}/.config/nvim-Lazyman\n"
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
      printf "\nYou may need to update or re-install Lazyman"
      prompt_continue
      mainmenu=1
      break
    }
    [ "$debug" ] || tput reset
    if [ "${have_rich}" ]; then
      rich "[b cyan]Lazyman Plugins Configuration Menu[/]" -p -a rounded -c -C
      rich "[b green]Manage the Neovim plugins enabled in[/] [b yellow]~/.config/nvim-Lazyman[/]" -p -c
    else
      [ "${have_figlet}" ] && show_figlet "Plugins"
    fi
    printf '\n'
    media_backend=$(get_conf_value media_backend)
    use_media_backend="${media_backend}"
    session_manager=$(get_conf_value session_manager)
    use_session_manager="${session_manager}"
    file_tree=$(get_conf_value file_tree)
    use_neotree="${file_tree}"
    enable_noice=$(get_conf_value enable_noice)
    if [ "${enable_noice}" == "true" ]; then
      use_noice=""
    else
      use_noice="✗"
    fi
    enable_chatgpt=$(get_conf_value enable_chatgpt)
    if [ "${enable_chatgpt}" == "true" ]; then
      use_chatgpt=""
    else
      use_chatgpt="✗"
    fi
    enable_codeexplain=$(get_conf_value enable_codeexplain)
    if [ "${enable_codeexplain}" == "true" ]; then
      use_codeexplain=""
    else
      use_codeexplain="✗"
    fi
    enable_copilot=$(get_conf_value enable_copilot)
    if [ "${enable_copilot}" == "true" ]; then
      use_copilot=""
    else
      use_copilot="✗"
    fi
    enable_neoai=$(get_conf_value enable_neoai)
    if [ "${enable_neoai}" == "true" ]; then
      use_neoai=""
    else
      use_neoai="✗"
    fi
    enable_surround=$(get_conf_value enable_surround)
    if [ "${enable_surround}" == "true" ]; then
      use_surround=""
    else
      use_surround="✗"
    fi
    enable_fancy=$(get_conf_value enable_fancy)
    if [ "${enable_fancy}" == "true" ]; then
      use_fancy=""
    else
      use_fancy="✗"
    fi
    enable_wilder=$(get_conf_value enable_wilder)
    if [ "${enable_wilder}" == "true" ]; then
      use_wilder=""
    else
      use_wilder="✗"
    fi
    enable_lualine_lsp_progress=$(get_conf_value enable_lualine_lsp_progress)
    if [ "${enable_lualine_lsp_progress}" == "true" ]; then
      use_lualine_lsp_progress=""
    else
      use_lualine_lsp_progress="✗"
    fi
    enable_terminal=$(get_conf_value enable_terminal)
    if [ "${enable_terminal}" == "true" ]; then
      use_terminal=""
    else
      use_terminal="✗"
    fi
    enable_toggleterm=$(get_conf_value enable_toggleterm)
    if [ "${enable_toggleterm}" == "true" ]; then
      use_toggleterm=""
    else
      use_toggleterm="✗"
    fi
    enable_wakatime=$(get_conf_value enable_wakatime)
    if [ "${enable_wakatime}" == "true" ]; then
      use_wakatime=""
    else
      use_wakatime="✗"
    fi
    enable_asciiart=$(get_conf_value enable_asciiart)
    if [ "${enable_asciiart}" == "true" ]; then
      use_asciiart=""
    else
      use_asciiart="✗"
    fi
    enable_cheatsheet=$(get_conf_value enable_cheatsheet)
    if [ "${enable_cheatsheet}" == "true" ]; then
      use_cheatsheet=""
    else
      use_cheatsheet="✗"
    fi
    enable_motion=$(get_conf_value enable_motion)
    use_motion="${enable_motion}"
    enable_notes=$(get_conf_value enable_notes)
    if [ "${enable_notes}" == "true" ]; then
      use_notes=""
    else
      use_notes="✗"
    fi
    markdown_preview=$(get_conf_value markdown_preview)
    use_markdown_preview="${markdown_preview}"
    obsidian_vault=$(get_conf_value obsidian_vault)
    use_obsidian_vault=$(basename "${obsidian_vault}")
    get_conf_table neorg_notes
    num_neorg_notes=${#neorg_notes_table[@]}
    enable_ranger=$(get_conf_value enable_ranger_float)
    if [ "${enable_ranger}" == "true" ]; then
      use_ranger=""
    else
      use_ranger="✗"
    fi
    enable_coding=$(get_conf_value enable_coding)
    if [ "${enable_coding}" == "true" ]; then
      use_coding=""
    else
      use_coding="✗"
    fi
    enable_compile=$(get_conf_value enable_compile)
    if [ "${enable_compile}" == "true" ]; then
      use_compile=""
    else
      use_compile="✗"
    fi
    enable_bbye=$(get_conf_value enable_bbye)
    if [ "${enable_bbye}" == "true" ]; then
      use_bbye=""
    else
      use_bbye="✗"
    fi
    enable_startuptime=$(get_conf_value enable_startuptime)
    if [ "${enable_startuptime}" == "true" ]; then
      use_startuptime=""
    else
      use_startuptime="✗"
    fi
    enable_dressing=$(get_conf_value enable_dressing)
    if [ "${enable_dressing}" == "true" ]; then
      use_dressing=""
    else
      use_dressing="✗"
    fi
    enable_games=$(get_conf_value enable_games)
    if [ "${enable_games}" == "true" ]; then
      use_games=""
    else
      use_games="✗"
    fi
    enable_multi_cursor=$(get_conf_value enable_multi_cursor)
    if [ "${enable_multi_cursor}" == "true" ]; then
      use_multi_cursor=""
    else
      use_multi_cursor="✗"
    fi
    enable_renamer=$(get_conf_value enable_renamer)
    if [ "${enable_renamer}" == "true" ]; then
      use_renamer=""
    else
      use_renamer="✗"
    fi
    use_dash=$(get_conf_value dashboard)
    enable_bookmarks=$(get_conf_value enable_bookmarks)
    if [ "${enable_bookmarks}" == "true" ]; then
      use_bookmarks=""
    else
      use_bookmarks="✗"
    fi
    enable_ide=$(get_conf_value enable_ide)
    if [ "${enable_ide}" == "true" ]; then
      use_ide=""
    else
      use_ide="✗"
    fi
    enable_navigator=$(get_conf_value enable_navigator)
    if [ "${enable_navigator}" == "true" ]; then
      use_navigator=""
    else
      use_navigator="✗"
    fi
    enable_project=$(get_conf_value enable_project)
    if [ "${enable_project}" == "true" ]; then
      use_project=""
    else
      use_project="✗"
    fi
    enable_picker=$(get_conf_value enable_picker)
    if [ "${enable_picker}" == "true" ]; then
      use_picker=""
    else
      use_picker="✗"
    fi
    enable_smooth_scrolling=$(get_conf_value enable_smooth_scrolling)
    if [ "${enable_smooth_scrolling}" == "true" ]; then
      use_smooth_scrolling=""
    else
      use_smooth_scrolling="✗"
    fi
    dashboard_recent_files=$(get_conf_value dashboard_recent_files)
    use_dashboard_recent_files="${dashboard_recent_files}"
    enable_dashboard_header=$(get_conf_value enable_dashboard_header)
    if [ "${enable_dashboard_header}" == "true" ]; then
      use_dashboard_header=""
    else
      use_dashboard_header="✗"
    fi
    enable_dashboard_quick_links=$(get_conf_value enable_dashboard_quick_links)
    if [ "${enable_dashboard_quick_links}" == "true" ]; then
      use_dashboard_quick_links=""
    else
      use_dashboard_quick_links="✗"
    fi
    enable_screensaver=$(get_conf_value enable_screensaver)
    use_screensaver="${enable_screensaver}"
    screensaver_timeout=$(get_conf_value screensaver_timeout)
    use_timeout="${screensaver_timeout}"
    indentline_style=$(get_conf_value indentline_style)
    use_indentline="${indentline_style}"
    PS3="${BOLD}${PLEASE} (numeric or text, 'h' for help): ${NORM}"
    options=()
    options+=("Ascii Art     [${use_asciiart}]")
    options+=("Bdelete cmd   [${use_bbye}]")
    options+=("Bookmarks     [${use_bookmarks}]")
    options+=("ChatGPT (AI)  [${use_chatgpt}]")
    options+=("Copilot (AI)  [${use_copilot}]")
    pyver=$(check_python_version)
    [ "${pyver}" == "OK" ] && {
      options+=("GPT4ALL (AI)  [${use_codeexplain}]")
    }
    [ -f "${HOME}/.codeexplain/model.bin" ] && {
      options+=(" Remove GPT model")
    }
    options+=("NeoAI   (AI)  [${use_neoai}]")
    options+=("Cheatsheets   [${use_cheatsheet}]")
    options+=("Enable coding [${use_coding}]")
    options+=("Compile & Run [${use_compile}]")
    options+=("Dashboard [${use_dash}]")
    if [ "${use_dash}" == "alpha" ]; then
      options+=(" Alpha Header [${use_dashboard_header}]")
      options+=(" Recent Files [${use_dashboard_recent_files}]")
      options+=(" Quick Links  [${use_dashboard_quick_links}]")
    fi
    options+=("Dressing UI   [${use_dressing}]")
    options+=("Fancy Icons   [${use_fancy}]")
    options+=("File Tree [${use_neotree}]")
    options+=("Enable Games  [${use_games}]")
    options+=("Enable IDE    [${use_ide}]")
    options+=("Indentline [${use_indentline}]")
    options+=("Enable Motion [${use_motion}]")
    options+=("Enable Notes  [${use_notes}]")
    if [ "${enable_notes}" == "true" ]; then
      options+=(" Preview  [${use_markdown_preview}]")
      options+=(" Obsidian [${use_obsidian_vault}]")
      [ ${num_neorg_notes} -lt 4 ] && {
        options+=(" Neorg Notes  [add]")
      }
    fi
    options+=("Media Backend [${use_media_backend}]")
    options+=("Multi Cursor  [${use_multi_cursor}]")
    options+=("Navigator     [${use_navigator}]")
    options+=("Noice UI      [${use_noice}]")
    options+=("Picker        [${use_picker}]")
    options+=("Project       [${use_project}]")
    options+=("Enable Ranger [${use_ranger}]")
    options+=("Enable Rename [${use_renamer}]")
    options+=("Screensaver [${use_screensaver}]")
    [ "${use_screensaver}" == "none" ] || {
      options+=(" Timeout    [${use_timeout}]")
    }
    options+=("Session [${use_session_manager}]")
    options+=("Smooth Scroll [${use_smooth_scrolling}]")
    options+=("StartupTime   [${use_startuptime}]")
    options+=("Surround      [${use_surround}]")
    options+=("Terminal      [${use_terminal}]")
    options+=("Toggle Term   [${use_toggleterm}]")
    options+=("WakaTime      [${use_wakatime}]")
    options+=("Wilder Menus  [${use_wilder}]")
    options+=("Winbar LSP    [${use_lualine_lsp_progress}]")
    options+=("Disable All")
    options+=("Enable All")
    [ -f ${CONFBACK} ] && {
      diff ${CONFBACK} ${NVIMCONF} >/dev/null || options+=("Reset to Defaults")
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
        "Media"*,* | *,"Media"*)
          choices=("none" "catimg" "chafa" "jp2a" "ueberzug" "viu")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Telescope Media Backend  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            set_conf_value "media_backend" "${choice}"
            pluginit=1
          fi
          break
          ;;
        " Neorg Note"*,* | *," Neorg Note"*)
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
                if [ -d "${notes}" ]
                then
                  case ${num_neorg_notes} in
                    0|1)
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
                      | sed -e "s/${neorg_temp}/${notes}/" >/tmp/nvim$$
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
        " Obsidian"*,* | *," Obsidian"*)
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
                if [ -d "${vault}" ]
                then
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
        " Preview"*,* | *," Preview"*)
          choices=("Preview" "Peek" "None")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Markdown Preview  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            if [ "${choice}" == "Preview" ]; then
              set_conf_value "markdown_preview" "preview"
            else
              if [ "${choice}" == "Peek" ]; then
                set_conf_value "markdown_preview" "peek"
              else
                if [ "${choice}" == "None" ]; then
                  set_conf_value "markdown_preview" "none"
                fi
              fi
            fi
            pluginit=1
          fi
          break
          ;;
        "Session"*,* | *,"Session"*)
          choices=("Persistence" "Possession" "None")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Neovim Session Manager  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            if [ "${choice}" == "Possession" ]; then
              set_conf_value "session_manager" "possession"
            else
              if [ "${choice}" == "Persistence" ]; then
                set_conf_value "session_manager" "persistence"
              else
                if [ "${choice}" == "None" ]; then
                  set_conf_value "session_manager" "none"
                fi
              fi
            fi
            pluginit=1
          fi
          break
          ;;
        "File"*,* | *,"File"*)
          choices=("Neotree" "Nvimtree" "None")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Neovim File Tree  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            if [ "${choice}" == "Neotree" ]; then
              set_conf_value "file_tree" "neo-tree"
            else
              if [ "${choice}" == "Nvimtree" ]; then
                set_conf_value "file_tree" "nvim-tree"
              else
                if [ "${choice}" == "None" ]; then
                  set_conf_value "file_tree" "none"
                fi
              fi
            fi
            pluginit=1
          fi
          break
          ;;
        "Noice"*,* | *,"Noice"*)
          if [ "${enable_noice}" == "true" ]; then
            set_conf_value "enable_noice" "false"
          else
            set_conf_value "enable_noice" "true"
          fi
          pluginit=1
          break
          ;;
        "ChatGPT"*,* | *,"ChatGPT"*)
          if [ "${enable_chatgpt}" == "true" ]; then
            set_conf_value "enable_chatgpt" "false"
            pluginit=1
          else
            if [ "$OPENAI_API_KEY" ]; then
              set_conf_value "enable_chatgpt" "true"
              pluginit=1
            else
              printf "\nThe OPENAI_API_KEY environment variable must be set"
              printf "\nbefore enabling the ChatGPT plugin."
              prompt_continue
            fi
          fi
          break
          ;;
        "Copilot"*,* | *,"Copilot"*)
          if [ "${enable_copilot}" == "true" ]; then
            set_conf_value "enable_copilot" "false"
          else
            set_conf_value "enable_copilot" "true"
          fi
          pluginit=1
          break
          ;;
        " Remove GPT"*,* | *," Remove GPT"*)
          rm -f "${HOME}/.codeexplain/model.bin"
          for models in "${HOME}"/.codeexplain/*
          do
            [ "${models}" == "${HOME}/.codeexplain/*" ] && {
              rmdir "${HOME}/.codeexplain"
            }
          done
          set_conf_value "enable_codeexplain" "false"
          pluginit=1
          break
          ;;
        "GPT4ALL"*,* | *,"GPT4ALL"*)
          if [ "${enable_codeexplain}" == "true" ]; then
            set_conf_value "enable_codeexplain" "false"
          else
            if [ -f "${HOME}/.codeexplain/model.bin" ]; then
              set_conf_value "enable_codeexplain" "true"
            else
              [ -x ${LMANDIR}/scripts/gpt4all.sh ] || {
                printf "\n${LMANDIR}/scripts/gpt4all.sh not executable"
                printf "\nUnable to enable the codeexplain.nvim plugin."
                printf "\nPlease check the Lazyman installation."
                prompt_continue
              }
              printf "\nThe GPT4ALL model must be downloaded before"
              printf "\nenabling the codeexplain.nvim GPT4ALL plugin."
              printf "\nThe model is nearly 4GB in ${HOME}/.codeexplain/."
              printf "\nWould you like to download the GPT4ALL model?\n"
              while true; do
                read -r -p "Download GPT4ALL model (no API key required) ? (y/n) " yn
                case $yn in
                  [Yy]*)
                    printf "\nDownloading large file, please be patient ..."
                    ${LMANDIR}/scripts/gpt4all.sh
                    if [ -f "${HOME}/.codeexplain/model.bin" ]; then
                      printf " done\n"
                      set_conf_value "enable_codeexplain" "true"
                    else
                      printf "\nDownload failed. Unable to enable plugin."
                      prompt_continue
                    fi
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
        "NeoAI"*,* | *,"NeoAI"*)
          if [ "${enable_neoai}" == "true" ]; then
            set_conf_value "enable_neoai" "false"
            pluginit=1
          else
            if [ "$OPENAI_API_KEY" ]; then
              set_conf_value "enable_neoai" "true"
              pluginit=1
            else
              printf "\nThe OPENAI_API_KEY environment variable must be set"
              printf "\nbefore enabling the NeoAI plugin."
              prompt_continue
            fi
          fi
          break
          ;;
        "Surround"*,* | *,"Surround"*)
          if [ "${enable_surround}" == "true" ]; then
            set_conf_value "enable_surround" "false"
          else
            set_conf_value "enable_surround" "true"
          fi
          pluginit=1
          break
          ;;
        "Fancy"*,* | *,"Fancy"*)
          if [ "${enable_fancy}" == "true" ]; then
            set_conf_value "enable_fancy" "false"
          else
            set_conf_value "enable_fancy" "true"
          fi
          pluginit=1
          break
          ;;
        "Wilder"*,* | *,"Wilder"*)
          if [ "${enable_wilder}" == "true" ]; then
            set_conf_value "enable_wilder" "false"
          else
            set_conf_value "enable_wilder" "true"
          fi
          pluginit=1
          break
          ;;
        "Winbar LSP"*,* | *,"Winbar LSP"*)
          if [ "${enable_lualine_lsp_progress}" == "true" ]; then
            set_conf_value "enable_lualine_lsp_progress" "false"
          else
            set_conf_value "enable_lualine_lsp_progress" "true"
          fi
          pluginit=1
          break
          ;;
        "Terminal"*,* | *,"Terminal"*)
          if [ "${enable_terminal}" == "true" ]; then
            set_conf_value "enable_terminal" "false"
          else
            set_conf_value "enable_terminal" "true"
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
        "Ascii Art"*,* | *,"Ascii Art"*)
          if [ "${enable_asciiart}" == "true" ]; then
            set_conf_value "enable_asciiart" "false"
          else
            set_conf_value "enable_asciiart" "true"
          fi
          pluginit=1
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
        "Enable Motion"*,* | *,"Enable Motion"*)
          choices=("Hop" "Leap" "None")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Neovim Motion Plugin  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            if [ "${choice}" == "Hop" ]; then
              set_conf_value "enable_motion" "hop"
            else
              if [ "${choice}" == "Leap" ]; then
                set_conf_value "enable_motion" "leap"
              else
                if [ "${choice}" == "None" ]; then
                  set_conf_value "enable_motion" "none"
                fi
              fi
            fi
            pluginit=1
          fi
          break
          ;;
        "Enable Notes"*,* | *,"Enable Notes"*)
          if [ "${enable_notes}" == "true" ]; then
            set_conf_value "enable_notes" "false"
          else
            set_conf_value "enable_notes" "true"
          fi
          pluginit=1
          break
          ;;
        "Enable Ranger"*,* | *,"Enable Ranger"*)
          if [ "${enable_ranger}" == "true" ]; then
            set_conf_value "enable_ranger_float" "false"
          else
            set_conf_value "enable_ranger_float" "true"
          fi
          pluginit=1
          break
          ;;
        "Enable coding"*,* | *,"Enable coding"*)
          if [ "${enable_coding}" == "true" ]; then
            printf "\n\nDisabling coding will disable LSP servers and several"
            printf "\nplugins providing coding and diagnostics features."
            printf "\nThis will create an editing environment for non-programmers."
            printf "\nIndividual features can be re-enabled using these menus.\n"
            while true; do
              read -r -p "Proceed with disabling coding features? (y/n) " yn
              case $yn in
                [Yy]*)
                  set_conf_value "enable_coding" "false"
                  for lsp in "${all_lsp_servers[@]}"; do
                    set_conf_table "LSP_SERVERS" "${lsp}" "disable"
                  done
                  break
                  ;;
                [Nn]*)
                  printf "\nSkipping disabling coding features\n"
                  break
                  ;;
                *)
                  printf "\nPlease answer yes or no.\n"
                  ;;
              esac
            done
          else
            set_conf_value "enable_coding" "true"
            for lsp in "${all_lsp_servers[@]}"; do
              set_conf_table "LSP_SERVERS" "${lsp}" "enable"
            done
          fi
          pluginit=1
          break
          ;;
        "Compile"*,* | *,"Compile"*)
          if [ "${enable_compile}" == "true" ]; then
            set_conf_value "enable_compile" "false"
          else
            set_conf_value "enable_compile" "true"
          fi
          pluginit=1
          break
          ;;
        "Multi Cursor"*,* | *,"Multi Cursor"*)
          if [ "${enable_multi_cursor}" == "true" ]; then
            set_conf_value "enable_multi_cursor" "false"
          else
            set_conf_value "enable_multi_cursor" "true"
          fi
          pluginit=1
          break
          ;;
        "Enable Rename"*,* | *,"Enable Rename"*)
          if [ "${enable_renamer}" == "true" ]; then
            set_conf_value "enable_renamer" "false"
          else
            set_conf_value "enable_renamer" "true"
          fi
          pluginit=1
          break
          ;;
        "Bdelete"*,* | *,"Bdelete"*)
          if [ "${enable_bbye}" == "true" ]; then
            set_conf_value "enable_bbye" "false"
          else
            set_conf_value "enable_bbye" "true"
          fi
          pluginit=1
          break
          ;;
        "StartupTime"*,* | *,"StartupTime"*)
          if [ "${enable_startuptime}" == "true" ]; then
            set_conf_value "enable_startuptime" "false"
          else
            set_conf_value "enable_startuptime" "true"
          fi
          pluginit=1
          break
          ;;
        "Dressing"*,* | *,"Dressing"*)
          if [ "${enable_dressing}" == "true" ]; then
            set_conf_value "enable_dressing" "false"
          else
            set_conf_value "enable_dressing" "true"
          fi
          pluginit=1
          break
          ;;
        "Enable Games"*,* | *,"Enable Games"*)
          if [ "${enable_games}" == "true" ]; then
            set_conf_value "enable_games" "false"
          else
            set_conf_value "enable_games" "true"
          fi
          pluginit=1
          break
          ;;
        "Dashboard"*,* | *,"Dashboard"*)
          choices=("alpha" "dash" "mini" "none")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Neovim Dashboard  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            [ "${choice}" == "${use_dash}" ] || {
              set_conf_value "dashboard" "${choice}"
              pluginit=1
            }
          fi
          break
          ;;
        "Bookmarks"*,* | *,"Bookmarks"*)
          if [ "${enable_bookmarks}" == "true" ]; then
            set_conf_value "enable_bookmarks" "false"
          else
            set_conf_value "enable_bookmarks" "true"
          fi
          pluginit=1
          break
          ;;
        "Enable IDE"*,* | *,"Enable IDE"*)
          if [ "${enable_ide}" == "true" ]; then
            set_conf_value "enable_ide" "false"
          else
            set_conf_value "enable_ide" "true"
          fi
          pluginit=1
          break
          ;;
        "Navigator"*,* | *,"Navigator"*)
          if [ "${enable_navigator}" == "true" ]; then
            set_conf_value "enable_navigator" "false"
          else
            set_conf_value "enable_navigator" "true"
          fi
          pluginit=1
          break
          ;;
        "Project"*,* | *,"Project"*)
          if [ "${enable_project}" == "true" ]; then
            set_conf_value "enable_project" "false"
          else
            set_conf_value "enable_project" "true"
          fi
          pluginit=1
          break
          ;;
        "Picker"*,* | *,"Picker"*)
          if [ "${enable_picker}" == "true" ]; then
            set_conf_value "enable_picker" "false"
          else
            set_conf_value "enable_picker" "true"
          fi
          pluginit=1
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
        " Recent Files"*,* | *," Recent Files"*)
          choices=("0" "1" "2" "3" "4" "5" "6" "7" "8" "9")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Number of Recent Files  " --layout=reverse --border --exit-0)
          [ "${choice}" == "${dashboard_recent_files}" ] || {
            if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
              set_conf_value "dashboard_recent_files" "${choice}"
              pluginit=1
            fi
          }
          break
          ;;
        " Alpha Header"*,* | *," Alpha Header"*)
          if [ "${enable_dashboard_header}" == "true" ]; then
            set_conf_value "enable_dashboard_header" "false"
          else
            set_conf_value "enable_dashboard_header" "true"
          fi
          pluginit=1
          break
          ;;
        " Quick Links"*,* | *," Quick Links"*)
          if [ "${enable_dashboard_quick_links}" == "true" ]; then
            set_conf_value "enable_dashboard_quick_links" "false"
          else
            set_conf_value "enable_dashboard_quick_links" "true"
          fi
          pluginit=1
          break
          ;;
        "Screensaver"*,* | *,"Screensaver"*)
          choices=("epilepsy" "leaves" "snow" "spring" "stars" "summer" "treadmill" "vanish" "xmas" "drop" "zone" "random" "none")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Screensaver  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            set_conf_value "enable_screensaver" "${choice}"
            pluginit=1
          fi
          break
          ;;
        " Timeout"*,* | *," Timeout"*)
          choices=("1" "2" "3" "4" "5" "10" "15" "30" "45")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Screensaver Timeout in Minutes  " --layout=reverse --border --exit-0)
          [ "${choice}" == "${screensaver_timeout}" ] || {
            if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
              set_conf_value "screensaver_timeout" "${choice}"
              pluginit=1
            fi
          }
          break
          ;;
        "Indentline"*,* | *,"Indentline"*)
          choices=("background" "colored" "context" "listchars" "mini" "simple" "none")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Indentline Style  " --layout=reverse --border --exit-0)
          [ "${choice}" == "${use_indentline}" ] || {
            if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
              set_conf_value "indentline_style" "${choice}"
              pluginit=1
            fi
          }
          break
          ;;
        "Disable All"*,* | *,"Disable All"*)
          set_conf_value "dashboard" "none"
          set_conf_value "file_tree" "none"
          set_conf_value "media_backend" "none"
          set_conf_value "session_manager" "none"
          set_conf_value "enable_noice" "false"
          set_conf_value "enable_chatgpt" "false"
          set_conf_value "enable_copilot" "false"
          set_conf_value "enable_codeexplain" "false"
          set_conf_value "enable_neoai" "false"
          set_conf_value "enable_surround" "false"
          set_conf_value "enable_fancy" "false"
          set_conf_value "enable_wilder" "false"
          set_conf_value "enable_lualine_lsp_progress" "false"
          set_conf_value "enable_terminal" "false"
          set_conf_value "enable_toggleterm" "false"
          set_conf_value "enable_wakatime" "false"
          set_conf_value "enable_asciiart" "false"
          set_conf_value "enable_cheatsheet" "false"
          set_conf_value "enable_notes" "false"
          set_conf_value "markdown_preview" "none"
          set_conf_value "enable_coding" "false"
          set_conf_value "enable_compile" "false"
          set_conf_value "enable_dressing" "false"
          set_conf_value "enable_motion" "none"
          set_conf_value "enable_ranger_float" "false"
          set_conf_value "enable_renamer" "false"
          set_conf_value "enable_multi_cursor" "false"
          set_conf_value "enable_bbye" "false"
          set_conf_value "enable_startuptime" "false"
          set_conf_value "enable_games" "false"
          set_conf_value "enable_bookmarks" "false"
          set_conf_value "enable_ide" "false"
          set_conf_value "enable_navigator" "false"
          set_conf_value "enable_project" "false"
          set_conf_value "enable_picker" "false"
          set_conf_value "enable_smooth_scrolling" "false"
          set_conf_value "enable_dashboard_header" "false"
          set_conf_value "enable_dashboard_quick_links" "false"
          set_conf_value "enable_screensaver" "none"
          set_conf_value "indentline_style" "none"
          pluginit=1
          break
          ;;
        "Enable All"*,* | *,"Enable All"*)
          set_conf_value "dashboard" "dash"
          set_conf_value "file_tree" "neo-tree"
          set_conf_value "media_backend" "jp2a"
          set_conf_value "session_manager" "possession"
          set_conf_value "enable_noice" "true"
          set_conf_value "enable_chatgpt" "true"
          set_conf_value "enable_copilot" "true"
          set_conf_value "enable_neoai" "true"
          [ -f "${HOME}/.codeexplain/model.bin" ] && {
            pyver=$(check_python_version)
            [ "${pyver}" == "OK" ] && {
              set_conf_value "enable_codeexplain" "true"
            }
          }
          set_conf_value "enable_surround" "true"
          set_conf_value "enable_fancy" "true"
          set_conf_value "enable_wilder" "true"
          set_conf_value "enable_lualine_lsp_progress" "true"
          set_conf_value "enable_terminal" "true"
          set_conf_value "enable_toggleterm" "true"
          [ -f "${HOME}"/.wakatime.cfg ] && set_conf_value "enable_wakatime" "true"
          set_conf_value "enable_asciiart" "true"
          set_conf_value "enable_cheatsheet" "true"
          set_conf_value "enable_notes" "true"
          set_conf_value "markdown_preview" "peek"
          set_conf_value "enable_coding" "true"
          set_conf_value "enable_compile" "true"
          set_conf_value "enable_dressing" "true"
          set_conf_value "enable_motion" "leap"
          set_conf_value "enable_ranger_float" "true"
          set_conf_value "enable_renamer" "true"
          set_conf_value "enable_multi_cursor" "true"
          set_conf_value "enable_bbye" "true"
          set_conf_value "enable_startuptime" "true"
          set_conf_value "enable_games" "true"
          set_conf_value "enable_bookmarks" "true"
          set_conf_value "enable_ide" "true"
          set_conf_value "enable_navigator" "true"
          set_conf_value "enable_project" "true"
          set_conf_value "enable_picker" "true"
          set_conf_value "enable_smooth_scrolling" "true"
          set_conf_value "enable_dashboard_header" "true"
          set_conf_value "enable_dashboard_quick_links" "true"
          set_conf_value "enable_screensaver" "random"
          set_conf_value "indentline_style" "mini"
          set_conf_value "list" "true"
          pluginit=1
          break
          ;;
        "Reset"*,* | *,"Reset"*)
          [ -f ${CONFBACK} ] && {
            cp ${CONFBACK} ${NVIMCONF}
            set_code_explain
            set_ranger_float
            set_waka_opt
            pluginit=1
          }
          break
          ;;
        "Open Lazyman",* | *,"Open Lazyman")
          if [ "${USEGUI}" ]; then
            NVIM_APPNAME="nvim-Lazyman" neovide
          else
            NVIM_APPNAME="nvim-Lazyman" nvim
          fi
          break
          ;;
        "Config Menu"*,* | *,"Config Menu"*)
          confmenu=1
          break 2
          ;;
        "Formatters"*,* | *,"Formatters"*)
          formenu=1
          break 2
          ;;
        "LSP Servers"*,* | *,"LSP Servers"*)
          lspmenu=1
          break 2
          ;;
        "Main Menu"*,* | *,"Main Menu"*)
          [ "${pluginit}" ] && lazyman -N nvim-Lazyman init
          mainmenu=1
          break 2
          ;;
        "Quit",* | *,"Quit" | "quit",* | *,"quit")
          [ "${pluginit}" ] && lazyman -N nvim-Lazyman init
          printf "\nExiting Lazyman Configuration Menu System\n\n"
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
    rich "[cyan]Lazyman LSP Servers Menu Help[/cyan]" -p -a rounded -c -C
  else
    printf "\n\tLazyman LSP Servers Menu Help\n"
  fi
  printf "\nEnable and disable installed Neovim language servers."
  printf "\nEnabled language servers are indicated with a []"
  printf "\nDisabled language servers are indicated with a [✗]\n"
  printf "\nThe Language Server Protocol (LSP) is an open protocol for use between"
  printf "\nsource code editors or integrated development environments (IDEs) and"
  printf "\nservers that provide programming language-specific features like code"
  printf "\ncompletion, syntax highlighting and marking of warnings and errors,"
  printf "\nas well as refactoring routines.\n"
  printf "\nSettings in this menu only effect the Lazyman Neovim configuration in:"
  printf "\n\t${HOME}/.config/nvim-Lazyman\n"
  prompt_continue
}

show_lsp_menu() {
  set_haves
  while true; do
    mainmenu=
    confmenu=
    plugmenu=
    formmenu=
    versmenu=
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
      rich "[cyan]Lazyman LSP Servers Menu[/cyan]" -p -a rounded -c -C
      rich "[b green]Enable/Disable LSP servers used by[/] [b yellow]~/.config/nvim-Lazyman[/]" -p -c
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
      if echo "${lsp_enabled_table[@]}" | grep -qw "$lsp" >/dev/null; then
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
        "Formatters Menu"*,* | *,"Formatters Menu"*)
          formmenu=1
          break 2
          ;;
        "Config Menu"*,* | *,"Config Menu"*)
          confmenu=1
          break 2
          ;;
        "Plugins Menu"*,* | *,"Plugins Menu"*)
          plugmenu=1
          break 2
          ;;
        "Main Menu"*,* | *,"Main Menu"*)
          [ "${pluginit}" ] && lazyman -N nvim-Lazyman init
          mainmenu=1
          break 2
          ;;
        "Quit",* | *,"Quit" | "quit",* | *,"quit")
          [ "${pluginit}" ] && lazyman -N nvim-Lazyman init
          printf "\nExiting Lazyman Configuration Menu System\n\n"
          exit 3
          ;;
        *,*)
          enable=
          if [ "${opt}" ]; then
            lspname=$(echo "${opt}" | awk ' { print $1 } ')
          else
            lspname=$(echo "${REPLY}" | awk ' { print $1 } ')
          fi
          grep "LSP_SERVERS" "${NVIMCONF}" | grep "\-\- \"${lspname}" >/dev/null && enable=1
          if [ "${enable}" ]; then
            set_conf_table "LSP_SERVERS" "${lspname}" "enable"
          else
            set_conf_table "LSP_SERVERS" "${lspname}" "disable"
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
    rich "[cyan]Lazyman Formatters and Linters Menu Help[/cyan]" -p -a rounded -c -C
  else
    printf "\n\tLazyman Formatters and Linters Menu Help\n"
  fi
  printf "\nEnable and disable installed Neovim formatters and linters."
  printf "\nEnabled formatters and linters are indicated with a []"
  printf "\nDisabled formatters and linters are indicated with a [✗]\n"
  printf "\nThese tools perform code formatting, static code analysis, and flag"
  printf "\nprogramming errors, bugs, stylistic errors and suspicious constructs.\n"
  printf "\nSettings in this menu only effect the Lazyman Neovim configuration in:"
  printf "\n\t${HOME}/.config/nvim-Lazyman\n"
  prompt_continue
}

show_formlint_menu() {
  set_haves
  while true; do
    mainmenu=
    confmenu=
    plugmenu=
    lspsmenu=
    versmenu=
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
      rich "[cyan]Lazyman Formatters and Linters Menu[/cyan]" -p -a rounded -c -C
      rich "[b green]Enable/Disable formatters and linters used by[/] [b yellow]~/.config/nvim-Lazyman[/]" -p -c
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
      if echo "${for_enabled_table[@]}" | grep -qw "$form" >/dev/null; then
        options+=("${longform} []")
      else
        options+=("${longform} [✗]")
      fi
    done
    options+=("Disable All")
    options+=("Enable All")
    options+=("LSP Servers Menu")
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
        "LSP Servers"*,* | *,"LSP Servers"*)
          lspsmenu=1
          break 2
          ;;
        "Plugins Menu"*,* | *,"Plugins Menu"*)
          plugmenu=1
          break 2
          ;;
        "Config Menu"*,* | *,"Config Menu"*)
          confmenu=1
          break 2
          ;;
        "Main Menu"*,* | *,"Main Menu"*)
          [ "${pluginit}" ] && lazyman -N nvim-Lazyman init
          mainmenu=1
          break 2
          ;;
        "Quit",* | *,"Quit" | "quit",* | *,"quit")
          [ "${pluginit}" ] && lazyman -N nvim-Lazyman init
          printf "\nExiting Lazyman Configuration Menu System\n\n"
          exit 3
          ;;
        *,*)
          enable=
          if [ "${opt}" ]; then
            forname=$(echo "${opt}" | awk ' { print $1 } ')
          else
            forname=$(echo "${REPLY}" | awk ' { print $1 } ')
          fi
          grep "FORMATTERS_LINTERS" "${NVIMCONF}" | grep "\-\- \"${forname}" >/dev/null && enable=1
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
    mainmenu=
    plugmenu=
    lspmenu=
    formenu=
    versmenu=
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
      rich "[b cyan]Lazyman Configuration Menu[/]" -p -a rounded -c -C
      rich "[b green]Manage the Neovim configuration in[/] [b yellow]~/.config/nvim-Lazyman[/]" -p -c
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
    enable_global_statusline=$(get_conf_value global_statusline)
    if [ "${enable_global_statusline}" == "true" ]; then
      use_global_statusline=""
    else
      use_global_statusline="✗"
    fi
    showtabline=$(get_conf_value showtabline)
    use_showtabline="${showtabline}"
    enable_list=$(get_conf_value list)
    if [ "${enable_list}" == "true" ]; then
      use_list=""
    else
      use_list="✗"
    fi
    enable_statusline=$(get_conf_value enable_statusline)
    if [ "${enable_statusline}" == "true" ]; then
      use_statusline=""
    else
      use_statusline="✗"
    fi
    enable_tabline=$(get_conf_value enable_tabline)
    if [ "${enable_tabline}" == "true" ]; then
      use_tabline=""
    else
      use_tabline="✗"
    fi
    enable_winbar=$(get_conf_value enable_winbar)
    use_winbar="${enable_winbar}"
    show_diagnostics=$(get_conf_value show_diagnostics)
    use_show_diagnostics="${show_diagnostics}"
    enable_semantic_highlighting=$(get_conf_value enable_semantic_highlighting)
    if [ "${enable_semantic_highlighting}" == "true" ]; then
      use_semantic_highlighting=""
    else
      use_semantic_highlighting="✗"
    fi
    convert_semantic_highlighting=$(get_conf_value convert_semantic_highlighting)
    if [ "${convert_semantic_highlighting}" == "true" ]; then
      convert_semantic_highlighting=""
    else
      convert_semantic_highlighting="✗"
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
    options+=("Global Status [${use_global_statusline}]")
    options+=("Status Line   [${use_statusline}]")
    options+=("Tab Line      [${use_tabline}]")
    options+=(" Showtabline  [${use_showtabline}]")
    if [ "${use_winbar}" == "none" ]
    then
      options+=("Winbar     [${use_winbar}]")
    else
      options+=("Winbar [${use_winbar}]")
    fi
    options+=("Semantic HL   [${use_semantic_highlighting}]")
    options+=("Convert SemHL [${convert_semantic_highlighting}]")
    options+=("Disable All")
    options+=("Enable All")
    options+=("Minimal Config")
    [ -f ${CONFBACK} ] && {
      diff ${CONFBACK} ${NVIMCONF} >/dev/null || options+=("Reset to Defaults")
    }
    [ -d "${LMANDIR}" ] && options+=("Open Lazyman")
    options+=("Formatters")
    options+=("LSP Servers")
    options+=("Plugins Menu")
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
        "Status Line"*,* | *,"Status Line"*)
          if [ "${enable_statusline}" == "true" ]; then
            set_conf_value "enable_statusline" "false"
          else
            set_conf_value "enable_statusline" "true"
          fi
          pluginit=1
          break
          ;;
        "Tab Line"*,* | *,"Tab Line"*)
          if [ "${enable_tabline}" == "true" ]; then
            set_conf_value "enable_tabline" "false"
          else
            set_conf_value "enable_tabline" "true"
          fi
          pluginit=1
          break
          ;;
        "Winbar"*,* | *,"Winbar"*)
          choices=("Barbecue" "Standard" "None")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select winbar style  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            if [ "${choice}" == "Barbecue" ]; then
              set_conf_value "enable_winbar" "barbecue"
            else
              if [ "${choice}" == "Standard" ]; then
                set_conf_value "enable_winbar" "standard"
              else
                if [ "${choice}" == "None" ]; then
                  set_conf_value "enable_winbar" "none"
                fi
              fi
            fi
            pluginit=1
          fi
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
        "Global Status"*,* | *,"Global Status"*)
          if [ "${enable_global_statusline}" == "true" ]; then
            set_conf_value "global_statusline" "false"
          else
            set_conf_value "global_statusline" "true"
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
        "Semantic HL"*,* | *,"Semantic HL"*)
          if [ "${enable_semantic_highlighting}" == "true" ]; then
            set_conf_value "enable_semantic_highlighting" "false"
          else
            set_conf_value "enable_semantic_highlighting" "true"
          fi
          break
          ;;
        "Convert SemHL"*,* | *,"Convert SemHL"*)
          if [ "${convert_semantic_highlighting}" == "true" ]; then
            set_conf_value "convert_semantic_highlighting" "false"
          else
            set_conf_value "convert_semantic_highlighting" "true"
          fi
          break
          ;;
        "Minimal Config"*,* | *,"Minimal Config"*)
          set_conf_value "global_statusline" "false"
          set_conf_value "enable_statusline" "false"
          set_conf_value "enable_tabline" "false"
          set_conf_value "showtabline" "0"
          set_conf_value "enable_winbar" "none"
          set_conf_value "show_diagnostics" "none"
          set_conf_value "enable_semantic_highlighting" "false"
          set_conf_value "convert_semantic_highlighting" "false"
          set_conf_value "media_backend" "none"
          set_conf_value "enable_chatgpt" "false"
          set_conf_value "enable_copilot" "false"
          set_conf_value "enable_codeexplain" "false"
          set_conf_value "enable_neoai" "false"
          set_conf_value "enable_surround" "false"
          set_conf_value "enable_fancy" "false"
          set_conf_value "enable_wilder" "false"
          set_conf_value "enable_lualine_lsp_progress" "false"
          set_conf_value "enable_wakatime" "false"
          set_conf_value "enable_asciiart" "false"
          set_conf_value "enable_coding" "false"
          set_conf_value "enable_compile" "false"
          set_conf_value "enable_dressing" "false"
          set_conf_value "enable_motion" "none"
          set_conf_value "enable_ranger_float" "false"
          set_conf_value "enable_renamer" "false"
          set_conf_value "enable_multi_cursor" "false"
          set_conf_value "enable_bbye" "false"
          set_conf_value "enable_startuptime" "false"
          set_conf_value "enable_games" "false"
          set_conf_value "enable_bookmarks" "false"
          set_conf_value "enable_ide" "false"
          set_conf_value "enable_navigator" "false"
          set_conf_value "enable_project" "false"
          set_conf_value "enable_picker" "false"
          set_conf_value "enable_dashboard_header" "false"
          set_conf_value "enable_screensaver" "none"
          for lsp in "${all_lsp_servers[@]}"; do
            set_conf_table "LSP_SERVERS" "${lsp}" "disable"
          done
          for form in "${all_formatters[@]}"; do
            set_conf_table "FORMATTERS_LINTERS" "${form}" "disable"
          done
          pluginit=1
          break
          ;;
        "Disable All"*,* | *,"Disable All"*)
          set_conf_value "number" "false"
          set_conf_value "relative_number" "false"
          set_conf_value "global_statusline" "false"
          set_conf_value "enable_statusline" "false"
          set_conf_value "enable_tabline" "false"
          set_conf_value "showtabline" "0"
          set_conf_value "enable_winbar" "none"
          set_conf_value "enable_transparent" "false"
          set_conf_value "show_diagnostics" "none"
          set_conf_value "enable_semantic_highlighting" "false"
          set_conf_value "convert_semantic_highlighting" "false"
          set_conf_value "list" "false"
          pluginit=1
          break
          ;;
        "Enable All"*,* | *,"Enable All"*)
          set_conf_value "number" "true"
          set_conf_value "relative_number" "true"
          set_conf_value "global_statusline" "true"
          set_conf_value "enable_statusline" "true"
          set_conf_value "enable_tabline" "true"
          set_conf_value "showtabline" "2"
          set_conf_value "enable_winbar" "barbecue"
          set_conf_value "enable_transparent" "true"
          set_conf_value "show_diagnostics" "popup"
          set_conf_value "enable_semantic_highlighting" "true"
          set_conf_value "convert_semantic_highlighting" "true"
          set_conf_value "list" "true"
          pluginit=1
          break
          ;;
        "Reset"*,* | *,"Reset"*)
          [ -f ${CONFBACK} ] && {
            cp ${CONFBACK} ${NVIMCONF}
            set_code_explain
            set_ranger_float
            set_waka_opt
            pluginit=1
          }
          break
          ;;
        "Open Lazyman",* | *,"Open Lazyman")
          if [ "${USEGUI}" ]; then
            NVIM_APPNAME="nvim-Lazyman" neovide
          else
            NVIM_APPNAME="nvim-Lazyman" nvim
          fi
          break
          ;;
        "Formatters"*,* | *,"Formatters"*)
          formenu=1
          break 2
          ;;
        "LSP Servers"*,* | *,"LSP Servers"*)
          lspmenu=1
          break 2
          ;;
        "Plugins Menu"*,* | *,"Plugins Menu"*)
          plugmenu=1
          break 2
          ;;
        "Main Menu"*,* | *,"Main Menu"*)
          [ "${pluginit}" ] && lazyman -N nvim-Lazyman init
          mainmenu=1
          break 2
          ;;
        "Quit",* | *,"Quit" | "quit",* | *,"quit")
          [ "${pluginit}" ] && lazyman -N nvim-Lazyman init
          printf "\nExiting Lazyman Configuration Menu System\n\n"
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
  [ "${mainmenu}" ] && exit 2
  [ "${plugmenu}" ] && show_plugin_menu
  [ "${lspmenu}" ] && show_lsp_menu
  [ "${formenu}" ] && show_formlint_menu
}

debug=
darg=
confmenu=
initplugs=
menu="conf"
pluginit=
# TODO: configure options
while getopts "dim:u" flag; do
  case $flag in
    d)
      debug=1
      darg="-d"
      ;;
    i)
      initplugs=1
      ;;
    m)
      menu="${OPTARG}"
      if [ "${menu}" ]
      then
        case "${menu}" in
          conf*|Conf*)
            menu="confmenu"
            ;;
          plug*|Plug*)
            menu="plugmenu"
            ;;
          lsp*|Lsp*|LSP*)
            menu="lspmenu"
            ;;
          for*|For*|lint*|Lint*)
            menu="formenu"
            ;;
          *)
            menu="main"
            ;;
        esac
      else
        menu="confmenu"
      fi
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

[ "${initplugs}" ] && {
  set_code_explain
  set_ranger_float
  set_waka_opt
  exit 0
}

# Source the Lazyman shell initialization for aliases and nvims selector
# shellcheck source=~/.config/nvim-Lazyman/.lazymanrc
[ -f ~/.config/nvim-Lazyman/.lazymanrc ] && source ~/.config/nvim-Lazyman/.lazymanrc

if [ "$menu" ]; then
  if [ "$menu" == "confmenu" ]; then
    show_conf_menu
  else
    if [ "$menu" == "plugmenu" ]; then
      show_plugin_menu
    else
      if [ "$menu" == "lspmenu" ]; then
        show_lsp_menu
      else
        if [ "$menu" == "formenu" ]; then
          show_formlint_menu
        else
          show_conf_menu
        fi
      fi
    fi
  fi
else
  show_conf_menu
fi

exit 0
