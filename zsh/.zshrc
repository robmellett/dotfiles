# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Use powerline
USE_POWERLINE="true"

#
# Variables
#
export BROWSER="/usr/bin/brave"
export AWS_DEFAULT_REGION="ap-southeast-2" 
export AWS_REGION="ap-southeast-2"

# Composer
# This will allow us to link to packages without symlinks so they can be used within docker containers
export COMPOSER_MIRROR_PATH_REPOS=1

#
# PATH
#
export PATH="$HOME/.config/composer/vendor/bin:$PATH" 

export PATH="$(yarn global bin):$PATH"

export PATH="/opt/homebrew/opt/node@18/bin:$PATH"

#
# Aliases
#

# Tether to the following wifi point
alias tether-list="nmcli dev wifi list"
alias tether="nmcli dev wifi connect AndroidAP2376"

# Find my Local IP Address
alias whereami="ip a | grep wlp2s0"

# Docker Stop All Containers
dstop() { docker stop $(docker ps -a -q); }

# Docker Compose Up and remote into it
alias dcu="docker-compose up -d"

# Docker Compose Down
alias dcd="docker-compose down"

# Tail log file
alias tlog="echo > storage/logs/laravel.log && tail -n 50 -f storage/logs/laravel.log"

# Clear the log file
alias clog="echo > storage/logs/laravel.log"

# Bref.sh
alias bref="serverless bref:cli"

# Laravel
alias artisan="php artisan"

# Laravel Pint
alias pint="vendor/bin/pint"

# Laravel Sail
alias sail="bash vendor/bin/sail"
alias sa="bash vendor/bin/sail artisan"

# Laravel Vapor
alias vapor="php vendor/bin/vapor"

# Run PhpUnit for faster local performance
alias phpunit="vendor/bin/phpunit --order-by=defects --stop-on-failure"

# Run alias for Pest
alias pest="vendor/bin/pest"

# Run alias for phpstan
alias phpstan="vendor/bin/phpstan --memory-limit=4G" 

# Run alias for Pint
alias pp="pint --dirty"

alias ppp="pint --dirty && phpstan"

# Run alias for pnpm
alias pn="pnpm"

# Create a new Nextjs App with tailwindcss as the default
alias next="yarn create next-app --tailwind with-tailwindcss-app"

# Clipboard
alias pbcopy="xclip -sel clip"

# Sort files by Size
alias lt='ls -h -l'
alias ll='ls -la'

# Sort by modification time
alias left='ls -t -1'

# Find a command in your grep history
alias hg='history | grep'

# Add a copy progress bar
alias cpv='rsync -ah --info=progress2 --remove-source-files'

# Ngrok
alias ngrok-start="ngrok http http://localhost"

# Composer
alias ci="composer install --prefer-dist"
alias cda="composer dump-autoload --optimize"
alias cgu="composer global update"
alias cgl="composer global show -i"
alias cri="rm -rf vendor && composer install --prefer-dist --ignore-platform-reqs"


# AWS
alias gh-aws-secrets="sh ~/Code/aws-config/set-aws-secrets.sh"

# PNPM
alias pnp="pnpm"


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/rob/Code/serverless-chrome/aws/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/rob/Code/serverless-chrome/aws/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/rob/Code/serverless-chrome/aws/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/rob/Code/serverless-chrome/aws/node_modules/tabtab/.completions/sls.zsh

source /Users/rob/.docker/init-zsh.sh || true # Added by Docker Desktop
