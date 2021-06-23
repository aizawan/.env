# For mac
alias dcr='docker run -it --rm -v ${PWD}:/workspace ubuntu.base:latest /bin/zsh'
alias dcrml='docker run -it --rm -v ${PWD}:/workspace ubuntu.conda:latest /bin/zsh'
alias dcrjupy='docker run -it --rm -p 8888:8888 -v ${PWD}:/workspace ubuntu.conda:latest jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root'
alias dcrjupylab='docker run -it --rm -p 8888:8888 -v ${PWD}:/workspace ubuntu.jupylab:latest jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root'
alias dcrpth='docker run -it --rm -v ${PWD}:/workspace ubuntu.pth:latest /bin/zsh'
alias sshsupend='ssh -t home sudo systemctl suspend'
alias mountnfs='mount_nfs -P 10.24.48.234:/home/aizawa ~/NFS'

# For GPU server
alias dcrhg='docker run -it --rm --shm-size=32G --gpus all -u `id -u`:`id -g` -v /home/aizawa/workspace:/home/aizawa/workspace -v /home/aizawa/dataset:/home/aizawa/dataset -v /home/aizawa/data:/home/aizawa/data aizawa-pytorch.1.8.1-cuda11.1.1-ubuntu20.04:latest /bin/zsh' 
