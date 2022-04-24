. "$ADOTDIR/antigen.zsh"

antigen use 'oh-my-zsh'
antigen bundle 'ssh-agent'
antigen bundle 'rust'
antigen bundle 'gitfast'
antigen bundle 'cp'
antigen bundle 'command-not-found'
antigen bundle 'docker'

antigen bundle 'zpm-zsh/dropbox'
antigen bundle 'zsh-users/zsh-autosuggestions'
antigen bundle 'zdharma-continuum/fast-syntax-highlighting'

antigen theme 'romkatv/powerlevel10k'

antigen apply
