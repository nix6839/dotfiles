. "${ZINIT[BIN_DIR]}/zinit.zsh"

zinit snippet 'OMZP::cargo'
zinit snippet 'OMZP::rustup'
zinit snippet 'OMZP::sudo'
zinit snippet 'OMZP::cp'
zinit snippet 'OMZP::command-not-found'

zinit ice svn
zinit snippet 'OMZP::gitfast'

zinit ice as'completion'
zinit snippet 'OMZP::rust/_rust'

zinit light 'zpm-zsh/dropbox'
zinit light 'zsh-users/zsh-autosuggestions'
zinit light 'zdharma/fast-syntax-highlighting'

zinit ice depth'1'
zinit light 'romkatv/powerlevel10k'
