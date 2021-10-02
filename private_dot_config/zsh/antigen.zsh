. "$ADOTDIR/antigen.zsh"

antigen use 'oh-my-zsh'
antigen bundle 'cargo'
antigen bundle 'rust'
antigen bundle 'rustup'
antigen bundle 'gitfast'
antigen bundle 'sudo'
antigen bundle 'cp'
antigen bundle 'command-not-found'

antigen bundle 'zpm-zsh/dropbox'
antigen bundle 'zsh-users/zsh-autosuggestions'
antigen bundle 'zdharma/fast-syntax-highlighting'

antigen theme 'romkatv/powerlevel10k'

antigen apply
