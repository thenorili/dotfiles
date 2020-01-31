# nori's dotfiles

## 2020Jan31 Changes

### 1. bash_aliases

  + alias ll='ls -Alhr" --time-style=+"%y%m%d-%H%M"'
  
"    sort by modification time newest *last*, verbose, human-readable sizes
    
  + alias lsd='ls -FAx --color --group-directories-first'
  
"    sort by name, display in rows - default after cd, append indicators
    
  + alias lsx='ls -FAxX --color --group-directories-first'
  
"    sort by extension, display in rows, append indicators
    
  + alias lmk='ls -FAm'
  
"    sort by name, display in comma-separated list

### 2. bashrc

  + removed conda footprint
  
  + PS1='\W\$'
  
  + wrapped in debug tags
  
  + restricted all settings to interactive shell
  
  + added two new bash functions
  
```
    cd () {
      command cd "$1" && clear && pwd && lsd
    }
    
    mkdir () {
      command mkdir "$1" && cd "$1" 
    }
```
### 3. vimrc

  + new plugins
  
  + see documentation at roam-thenorili-[[Vim]]

### 4. autokey

  + M-d = 2020Jan31
  
  + M-D = 2020-0131-1818

### 5. terminator-config

  + added color options for default font size
  
  + added nocolor options for default and small sizes
  
  + fixed broken site-dev layout
  
  + changed second small window to run 'git diff' on startup
