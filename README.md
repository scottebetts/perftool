# perftool

Simple Dockerfile for testing Linux performance issues so Mac/Windows users can play, too.

- Using Debian Latest  
- Includes neovim with plugins  
- There's python in there, even in neovim!  
- Uses zsh 

## Build
```docker build -t perftool .```

## Run
```docker run -it perftool:latest /bin/zsh```
