FROM ubuntu:16.04
LABEL maintainer "hiroaki aizawa <aizawan@users.noreply.github.com>"

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
      language-pack-ja-base \
      language-pack-ja

ENV LANG=ja_JP.UTF-8

RUN git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
      && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
      && chsh -s /bin/zsh

# Add configuration files
ADD .tmux.conf /root/.tmux.conf

WORKDIR /workspace

CMD ["/bin/zsh"]
