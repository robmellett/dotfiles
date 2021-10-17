# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration

if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi

# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

#
# Variables
#
export BROWSER="/usr/bin/brave"
export AWS_DEFAULT_REGION="ap-southeast-2" 

#
# PATH
#
export PATH="$HOME/.config/composer/vendor/bin:$PATH" 

export PATH="$(yarn global bin):$PATH"

#
# Alias
#

# Tether to the following wifi point
alias tether-list="nmcli dev wifi list"
alias tether="nmcli dev wifi connect AndroidAP2376"

# Find my Local IP Address
alias whereami="ip a | grep wlp2s0"

# Docker Stop All Containers
dstop() { docker stop $(docker ps -a -q); }

# Docker Compose Up and remote into it
alias dcu="docker-compose up -d && ./docker.sh"

# Docker Compose Down
alias dcd="docker-compose down"

# Tail log file
alias tlog="echo > storage/logs/laravel.log && tail -n 50 -f storage/logs/laravel.log"

alias bref="vendor/bin/bref"

# Laravel
alias artisan="php artisan"

# Laravel Sail
alias sail="bash vendor/bin/sail"

# Laravel Vapor
alias vapor="php vendor/bin/vapor"

# Run PhpUnit for faster local performance
alias phpunit="vendor/bin/phpunit --order-by=defects --stop-on-failure"

# Run alias for Pest
alias pest="vendor/bin/pest"

# Run alis for phpstan
alias phpstan="vendor/bin/phpstan --memory-limit=2G" 

# Install and Configure Robmellett/laravel-deveops package
alias laravel-devops="composer require robmellett/devops --dev && php artisan vendor:publish  --provider='Robmellett\Devops\DevopsServiceProvider'"

# Create a new Nuxt.js App
alias nuxt="yarn create nuxt-app"

# Clipboard
alias pbcopy="xclip -sel clip"

# Sort files by Size
alias lt='ls --human-readable --size -1 -S --classify'
alias ll='ls -la'

# Sort by modification time
alias left='ls -t -1'

# Find a command in your grep history
alias hg='history | grep'

# Add a copy progress bar
alias cpv='rsync -ah --info=progress2 --remove-source-files'

# Ngrok
alias ngrok-start="ngrok http https://localhost:7000"

# Composer
alias cda="composer dump-autoload"
alias cgu="composer global update"
alias cgl="composer global show -i"

# Increase Sound Hack
alias sound="pactl -- set-sink-volume 0 +105%"