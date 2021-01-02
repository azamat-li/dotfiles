# Get aliases associated with key
alias ag="alias | grep"
alias pat="artisan tinker"
alias dl="./vendor/laravel/dusk/bin/chromedriver-linux &" # Dusk Launch chome driver

# Resume laravel developing
function rl {
	cd $1; # cd into dir specified
	php artisan serve &; # launch server
	./vendor/laravel/dusk/bin/chromedriver-linux & # launch ChromeDrive for e2e tests developing
	firefox laracasts.com; # launch laracasts
	/opt/PhpStorm-203.5981.43/bin/phpstorm.sh . &; # launch phpstorm eap, check yours dir via `whereis phpstorm.sh`
}

function phps {
	phpstorm.sh $1 &
}

alias gstart="git init && git add -A && git commit -m inited"
alias banner="clear && echo '--------------------------------------------
-----------------------------------------------
-----------------------------------------------
----------------------------------------------'"

