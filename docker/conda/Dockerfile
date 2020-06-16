FROM ubuntu:16.04
LABEL maintainer "hiroaki aizawa <aizawan@users.noreply.github.com>"

ARG PYTHON_VERSION=3.7
RUN apt-get update && apt-get -y upgrade \
      && apt-get install -y --no-install-recommends \
      git \
      zsh \
      curl \
      wget \
      tree \
      tmux \
      vim \
      unzip \
      colord \
      build-essential \
      cmake \
      ca-certificates \
      libjpeg-dev \
      libpng-dev && rm -rf /var/lib/apt/lists/*

RUN git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
      && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
      && chsh -s /bin/zsh

RUN curl -o ~/miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
      chmod +x ~/miniconda.sh && \
      ~/miniconda.sh -b -p /opt/conda && \
      rm ~/miniconda.sh && \
      /opt/conda/bin/conda install -y python=$PYTHON_VERSION \
            numpy pyyaml scipy ipython jupyter colorlog \
            matplotlib scikit-image h5py seaborn lmdb \
            tqdm protobuf Pillow scikit-learn && \
      /opt/conda/bin/conda clean -ya
ENV PATH /opt/conda/bin:$PATH

ADD .tmux.conf /root/.tmux.conf
ADD .vimrc /root/.vimrc
ADD ./docker/conda/aliases.zsh /root/.oh-my-zsh/custom/aliases.zsh

WORKDIR /workspace

CMD ["/bin/zsh"]
