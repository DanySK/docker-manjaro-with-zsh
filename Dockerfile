FROM danysk/manjaro-paru:20241003.20240930
USER build
RUN paru -Sy\
    awesome-terminal-fonts\
    lsb-release\
    manjaro-base-skel\
    manjaro-zsh-config\
    ttf-hack-nerd\
    ttf-meslo-nerd-font-powerlevel10k\
    zsh\
    zsh-autosuggestions\
    zsh-completions\
    zsh-history-substring-search\
    zsh-syntax-highlighting\
    zsh-theme-powerlevel10k\
    --noconfirm
RUN paru -Sccd --noconfirm
USER root
RUN paccache -rk 0
RUN cp -r /etc/skel /root
RUN cp -r /etc/skel /home/build
ENTRYPOINT [ "/bin/zsh" ]
