# my-bash-aliases
My personal bash aliases for development on Linux/Unix systems, as well as other configuration files.

## Setup of command auto-complete on Ubuntu
1. Run `sudo vim /etc/inputrc`
2. find the lines:
```bash
# alternate mappings for "page up" and "page down" to search the history
# "\e[5~": history-search-backward
# "\e[6~": history-search-forward
```
3. Remove the # to uncomment the two lines:
```bash
# alternate mappings for "page up" and "page down" to search the history
"\e[5~": history-search-backward
"\e[6~": history-search-forward
```

*[StackExchange source](https://askubuntu.com/questions/144969/terminal-command-autocomplete)*
