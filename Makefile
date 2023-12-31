# Misc
.DEFAULT_GOAL = help
.PHONY        : help build start stop

## —— 🎵 🐳 The Symfony-docker Makefile 🐳 🎵 ——————————————————————————————————
help: ## Outputs this help screen
	@grep -E '(^[a-zA-Z0-9\./_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

## —— Copy from icons 📋 ————————————————————————————————————————————————————————————————
copy: ## Copy from icons
	cp -R ../pokenini-icon/images/* .
