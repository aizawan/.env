# .env
Dotfiles for Linux and macOS.

## Setup
1. Build docker image.
  ```:bash
  $ ./build_docker.linux.sh
  ```

2. Create symbolic links.
  ```:bash
  $ ./link_dotfiles.linux.sh
  ```

## Usage
- Commands for if you use a anaconda envionment with the CLI.
  ```:bash
  $ dcrml
  ```

- Commands for if you use a jupyter notebook.
  ```:bash
  $ dcrjupy
  ```

- Commands for if you use a jupyter notebook.
  ```:bash
  $ dcrpth
  ```

## ML
```
docker run -it --rm -p 8888:8888 -v ${PWD}:/workspace ubuntu.conda:latest /bin/zsh
jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root
```
