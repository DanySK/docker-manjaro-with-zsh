FROM danysk/manjaro-pamac:20240927.20240922
RUN pamac update --no-confirm
RUN pamac upgrade --no-confirm
RUN pamac install awesome-terminal-fonts\
    lsb-release\
    manjaro-zsh-config\
    ttf-meslo-nerd-font-powerlevel10k\
    zsh\
    zsh-autosuggestions\
    zsh-completions\
    zsh-history-substring-search\
    zsh-syntax-highlighting\
    zsh-theme-powerlevel10k\
    --no-confirm
RUN paccache -rk 0
RUN pamac clean -b
RUN cp -r /etc/skel /root
ENTRYPOINT [ "/bin/zsh" ]
