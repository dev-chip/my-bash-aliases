# my-development-environment
My personal development environment for Linux systems.

## Install
To setup the development environment:
```bash
./deploy.sh
```

## Grab
To copy current development environment configuration assets into this repository so they can be commited and shared:
```bash
./grab.sh
```

## Enable Bash command history search
Additionally, I like to enable history-search mappings: 
1. Run `sudo vim /etc/inputrc`
2. Find and uncomment the following alternate mappings for `"\e[5~"` and `"\e[6~"`:
```bash
# alternate mappings for "page up" and "page down" to search the history
"\e[5~": history-search-backward
"\e[6~": history-search-forward
```
3. Find and comment any other lines with mappings for `"\e[5~"` and `"\e[6~"`.
