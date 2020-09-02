FROM danysk/manjaro-with-yay
RUN yay -Syu --noconfirm
RUN yay-install awesome-terminal-fonts lsb-release manjaro-zsh-config nerd-fonts-terminus ttf-meslo-nerd-font-powerlevel10k zsh zsh-autosuggestions zsh-completions zsh-history-substring-search zsh-syntax-highlighting zsh-theme-powerlevel10k-git
COPY .zshrc /root/.zshrc
COPY .p10k.zsh /root/.p10k.zsh
CMD zsh
