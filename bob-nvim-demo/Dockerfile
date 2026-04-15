FROM node:25-trixie 
LABEL maintainer "EBG"
ENV DEBIAN_FRONTEND noninteractive
WORKDIR /root/

SHELL ["/bin/bash", "-c"]

RUN apt update && apt install -y make gcc python3 ninja-build gettext cmake build-essential curl sudo vim git chafa fzf ripgrep

RUN wget https://github.com/neovim/neovim/archive/refs/tags/v0.12.1.zip && unzip v0.12.1.zip -d /root/

RUN cd /root/neovim-0.12.1 && make CMAKE_BUILD_TYPE=Release && make install

ENV NVIM_DIR="/root/.config/nvim"
RUN mkdir -p $NVIM_DIR/lua/config && mkdir -p $NVIM_DIR/lua/plugins

COPY /files/ /

RUN mv /init.lua $NVIM_DIR && mv /lazy.lua $NVIM_DIR/lua/config && mv /bob.lua /snacks.lua $NVIM_DIR/lua/plugins 
RUN wget https://bob.ibm.com/download/bobshell.sh && /bin/bash ./bobshell.sh --pm npm 

CMD ["/bin/bash"]


