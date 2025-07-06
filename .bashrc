# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [[ -f ~/.bash_aliases ]]; then 
	. ~/.bash_aliases
fi

# Add to PATH
export PATH=$PATH:~/.local/bin
