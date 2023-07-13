FROM debian:latest
RUN apt update
RUN apt -y install strace tcpdump net-tools zsh lsof atop sysstat bpftrace blktrace fatrace lttng-tools bcc autoconf libtool libssl-dev git curl iproute2 openssh-server ethtool tiptop sudo python3 python3-pip python3-neovim

COPY ./.bashrc /root/
COPY ./init.vim /root/.config/nvim/
RUN git clone https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/Vundle.vim
RUN /usr/bin/nvim +PluginInstall +qall
