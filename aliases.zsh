alias dcr='docker run -it --rm -v ${PWD}:/workspace ubuntu.base:latest /bin/zsh'
alias dcrml='docker run -it --rm -v ${PWD}:/workspace ubuntu.conda:latest /bin/zsh'
alias dcrjupy='docker run -it --rm -p 8888:8888 -v ${PWD}:/workspace ubuntu.conda:latest jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root'
