#!/bin/bash

if [[ ! $(command -v ruby) ]]; then
	echo 'Installing ruby...'
	sleep .1
	pkg install ruby -y > /dev/null 2>&1
elif [[ $(command -v ruby) ]]; then
	echo ''
fi
if [[ ! $(command -v lolcat) ]]; then
	echo "Installing lolcat..."
	sleep .1
	gem install lolcat > /dev/null 2>&1
elif [[ $(command -v lolcat) ]]; then
	echo ""
fi
#python3 .cybersh.py

if [[ ! $(echo $?) == "0" ]]; then
	echo "an error occured"
	exit
else
	python3 .cybersh.py
fi
