FROM debian:bookworm-slim AS build1

ENV LC_ALL C.UTF-8
RUN apt update
RUN apt -y install strace tcpdump net-tools zsh lsof atop sysstat bpftrace blktrace fatrace lttng-tools bcc autoconf libtool libssl-dev git curl iproute2 openssh-server ethtool tiptop sudo python3 python3-pip python3-neovim wget tmux
RUN sudo apt remove -y vim vim-runtime gvim vim-tiny vim-common vim-gui-common vim-nox

FROM build1 AS build2
COPY ./.bashrc /root/
COPY ./init.vim /root/.config/nvim/

FROM build2 AS build3
RUN git clone https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/Vundle.vim
RUN /usr/bin/nvim +PluginInstall +qall

FROM build3 as build4
COPY omz /root/.oh-my-zsh
COPY zshrc /root/.zshrc
COPY p10k.zsh /root/.p10k.zsh
