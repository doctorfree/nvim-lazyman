# From: https://github.com/3rd/config/tree/master/home/dotfiles/nvim
SHELL         = /usr/bin/env bash
.SHELLFLAGS   = -eu -o pipefail -c
SOURCE        = $(realpath $(dir $(realpath $(lastword $(MAKEFILE_LIST)))))

# colors
BLACK         = $(shell tput -Txterm setaf 0)
RED           = $(shell tput -Txterm setaf 1)
GREEN         = $(shell tput -Txterm setaf 2)
YELLOW        = $(shell tput -Txterm setaf 3)
MAGENTA       = $(shell tput -Txterm setaf 5)
CYAN          = $(shell tput -Txterm setaf 6)
WHITE         = $(shell tput -Txterm setaf 7)
BLUE          = $(shell tput -Txterm setaf 4)
RESET         = $(shell tput -Txterm sgr0)

# log helper
define print_mod_start
	@echo "╭── $(1)"
endef
define print_mod
	@echo "│ • $(1)"
endef
define print_mod_end
	@echo "╰──────"
endef

DEV_FEEDKEYS=:e\n
DEV_EXTRA_ARGS=init.lua

.DEFAULT_GOAL = help
.PHONY: help clean dev profile profile-viml profile-startup benchmark benchmark-baseline benchmark-startup

help: ## help
	@echo "🔥 ${YELLOW}nvim${RESET}"
	@grep -E '^[a-zA-Z_0-9%-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "${BLUE}%-20s${RESET} %s\n", $$1, $$2}'

clean: ## clean-up profiling artifacts
	@-rm .tmp.* 2>&1 >/dev/null

dev: ## watch
	@watchexec -e ".lua,.vim" -i "**/sandbox/**" -r -c clear "nvim -c \"call feedkeys(\\\"$(DEV_FEEDKEYS)\\\")\" $(DEV_EXTRA_ARGS)"

run: ## run
	@bash -c "nvim $(DEV_EXTRA_ARGS)"

dev-sandbox: ## watch in sandbox
	$(eval SANDBOX_HOME=$(SOURCE)/sandbox)
	$(eval SANDBOX_NVIM=$(SANDBOX_HOME)/nvim)
	@mkdir -p "$(SANDBOX_HOME)"
	@ln -fns "$(SOURCE)" "$(SANDBOX_NVIM)"
	@watchexec -e ".lua,.vim" -i "**/sandbox/**" -r -c clear "env DEV=true XDG_CONFIG_HOME=$(SANDBOX_HOME) nvim -c \"call feedkeys(\\\"$(DEV_FEEDKEYS)\\\")\" $(DEV_EXTRA_ARGS)"

run-sandbox: ## run in sandbox
	$(eval SANDBOX_HOME=$(SOURCE)/sandbox)
	$(eval SANDBOX_NVIM=$(SANDBOX_HOME)/nvim)
	@mkdir -p "$(SANDBOX_HOME)"
	@ln -fns "$(SOURCE)" "$(SANDBOX_NVIM)"
	@bash -c "env DEV=true XDG_CONFIG_HOME=$(SANDBOX_HOME) nvim $(DEV_EXTRA_ARGS)"

profile: profile-startup profile-viml ## profile everything

profile-startup: ## profile startup (--startuptime)
	@-rm profile-startup.log
	@nvim --headless --startuptime profile-startup.log +qa
	@cat profile-startup.log | sort -k 2

profile-viml: ## profile viml (func *, file *)
	@-rm profile-viml.log
	@nvim --headless -c 'profile start profile-viml.log' -c 'profile func *' -c 'profile file *' +qa
	@cat profile-viml.log

profile-lua: ## profile lua (https://github.com/charlesmallah/lua-profiler)
	@echo TODO

benchmark: benchmark-baseline benchmark-startup ## benchmark everything (baseline, startup)

benchmark-baseline: ## run baseline benchmark (-u NONE)
	$(call print_mod_start,${MAGENTA}Benchmark:${RESET} baseline)
	@hyperfine --warmup 10 --runs 40 --export-markdown profile-bench-baseline.md "nvim -u NONE --headless +qa init.lua" > profile-bench-baseline.log
	@rg Time < profile-bench-baseline.log | awk '{print $$5}'| xargs -0 printf '│ • ${CYAN}Mean${RESET}: ${YELLOW}%s${RESET}'
	@rg Time < profile-bench-baseline.log | awk '{print $$11}' | xargs -0 printf '│ • ${CYAN}User${RESET}: ${YELLOW}%s${RESET}'
	@rg Time < profile-bench-baseline.log | awk '{print $$14}'| xargs -0 printf '│ • ${CYAN}System${RESET}: ${YELLOW}%s${RESET}'
	$(call print_mod_end)

benchmark-startup: ## run startup benchmark
	$(call print_mod_start,${MAGENTA}Benchmark:${RESET} startup)
	@hyperfine --warmup 10 --runs 40 --export-markdown profile-bench-startup.md "nvim --headless +qa init.lua" > profile-bench-startup.log
	@rg Time < profile-bench-startup.log | awk '{print $$5}'| xargs -0 printf '│ • ${CYAN}Mean${RESET}: ${YELLOW}%s${RESET}'
	@rg Time < profile-bench-startup.log | awk '{print $$11}' | xargs -0 printf '│ • ${CYAN}User${RESET}: ${YELLOW}%s${RESET}'
	@rg Time < profile-bench-startup.log | awk '{print $$14}'| xargs -0 printf '│ • ${CYAN}System${RESET}: ${YELLOW}%s${RESET}'
	$(call print_mod_end)
