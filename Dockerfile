FROM danysk/docker-manjaro-linux-with-yay:99.20220731.0945
RUN yay -Syu --noconfirm
RUN yay-install \
awesome-terminal-fonts \
lsb-release \
manjaro-zsh-config \
nerd-fonts-terminus \
ttf-meslo-nerd-font-powerlevel10k \
zsh zsh-autosuggestions \
zsh-completions \
zsh-history-substring-search \
zsh-syntax-highlighting \
zsh-theme-powerlevel10k
COPY .zshrc /root/.zshrc
COPY .zshrc /etc/skel/.zshrc
COPY .p10k.zsh /root/.p10k.zsh
COPY .p10k.zsh /etc/skel/.p10k.zsh
CMD zsh
