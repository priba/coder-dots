# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="dracula"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	fzf
	fzf-tab
)

source $ZSH/oh-my-zsh.sh

# additional completions
fpath+=~/.zfunc
autoload -U compinit && compinit

# User configuration

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# use tmux popup for completion results
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# preview directory's content with exa when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
# increase minimal popup window size
zstyle ':fzf-tab:*' popup-min-size 50 8
zstyle ':fzf-tab:*' popup-pad 30 0
# lines occupied by fzf's prompt
zstyle ':fzf-tab:*' fzf-pad 4
# trigger for continuous completion
zstyle ':fzf-tab:*' continuous-trigger '/'


# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

alias ls="exa --color=always --octal-permissions --git --group-directories-first --classify --long"
alias la="exa -a --color=always --octal-permissions --git --group-directories-first --classify --long"
alias ll="exa -a --color=always --octal-permissions --git --group-directories-first --classify --long"
alias ee="nnn"
# Tree view: use as `lt 3 <folder>` for a 3 level tree of <folder>
alias lt="exa -a --color=never --git --tree --octal-permissions --long --header --group-directories-first --icons"
alias cf="cd \$(find . -type d -print | fzf)"
alias cat="batcat"
alias sysinfo="macchina"
alias kw=krakenw
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# We need the last version of tmux which is not available in apt
PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

export LC_CTYPE='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'

export NEPTUNE_API_TOKEN="eyJhcGlfYWRkcmVzcyI6Imh0dHBzOi8vbmVwdHVuZS5oZWxzaW5nLWRldi5haSIsImFwaV91cmwiOiJodHRwczovL25lcHR1bmUuaGVsc2luZy1kZXYuYWkiLCJhcGlfa2V5IjoiOTllYzVmZjUtYTk5OS00YTBlLWI4NmQtMTc1OThkMTdlMjI2In0="
export SPINE_CONFIG_STR=eyJpbnN0YW5jZXMiOiB7InByb2QiOiB7Imhvc3QiOiAic3BpbmUtYXBpLmhlbHNpbmctZGV2LmFpIiwgImF1dGhvcml0eSI6ICJrZXljbG9hay5oZWxzaW5nLWRldi5haSIsICJyZWFsbSI6ICJoZWxzaW5nIiwgImNsaWVudF9pZCI6ICJkZXZpY2UtY2xpZW50IiwgInVzZV9kZXZpY2VfY29kZSI6IHRydWUsICJzY29wZXMiOiBbInNwaW5lLWJhY2tlbmQiLCAib2ZmbGluZV9hY2Nlc3MiXX19LCAiYWN0aXZlX2Vudmlyb25tZW50IjogInByb2QiLCAidG9rZW5fY2FjaGVfZGlyZWN0b3J5IjogbnVsbCwgInRva2VucyI6IHsiYmVhcmVyIjogImV5SmhiR2NpT2lKU1V6STFOaUlzSW5SNWNDSWdPaUFpU2xkVUlpd2lhMmxrSWlBNklDSmlSbFZZVkVSQk9WaFBaa0oyZEVseU9VUk5lVFJ0YVVSRGVIRnpWbHAyV0RsemVHcHhNMWd0YmpKSkluMC5leUpsZUhBaU9qRTJPVEF5T1RNeE9Ea3NJbWxoZENJNk1UWTVNREkzTlRFNE9Td2lZWFYwYUY5MGFXMWxJam94Tmprd01qY3pPVFEwTENKcWRHa2lPaUk0Wm1OaU5qSXdOQzFqTnpVd0xUUmpNakV0T0RJMlpTMWpNbVJqT1RabE9ERmhNakVpTENKcGMzTWlPaUpvZEhSd2N6b3ZMMnRsZVdOc2IyRnJMbWhsYkhOcGJtY3RaR1YyTG1GcEwyRjFkR2d2Y21WaGJHMXpMMmhsYkhOcGJtY2lMQ0poZFdRaU9pSnpjR2x1WlMxaVlXTnJaVzVrSWl3aWMzVmlJam9pTXpRMllqUTRObVV0WXprNU5TMDBNemMzTFdFM1pURXRNbUkzTmpZeVpHTm1aalExSWl3aWRIbHdJam9pUW1WaGNtVnlJaXdpWVhwd0lqb2laR1YyYVdObExXTnNhV1Z1ZENJc0luTmxjM05wYjI1ZmMzUmhkR1VpT2lJeE9ESTRaV1ZoWkMwMlpEY3hMVFF4TkdZdE9XRmtNeTAxTURJMk5UTTRNelJsWVRZaUxDSmhZM0lpT2lJd0lpd2ljbVZoYkcxZllXTmpaWE56SWpwN0luSnZiR1Z6SWpwYkltOW1abXhwYm1WZllXTmpaWE56SWl3aVpHVm1ZWFZzZEMxeWIyeGxjeTFvWld4emFXNW5JaXdpZFcxaFgyRjFkR2h2Y21sNllYUnBiMjRpWFgwc0luTmpiM0JsSWpvaWIzQmxibWxrSUc5bVpteHBibVZmWVdOalpYTnpJSEJ5YjJacGJHVWdaVzFoYVd3Z2MzQnBibVV0WW1GamEyVnVaQ0lzSW5OcFpDSTZJakU0TWpobFpXRmtMVFprTnpFdE5ERTBaaTA1WVdRekxUVXdNalkxTXpnek5HVmhOaUlzSW1WdFlXbHNYM1psY21sbWFXVmtJanBtWVd4elpTd2libUZ0WlNJNklsQmhkU0JTYVdKaElFWnB3Nmx5Y21WNklpd2ljSEpsWm1WeWNtVmtYM1Z6WlhKdVlXMWxJam9pY0dGMUxuSnBZbUZBYUdWc2MybHVaeTVoYVNJc0ltZHBkbVZ1WDI1aGJXVWlPaUpRWVhVaUxDSm1ZVzFwYkhsZmJtRnRaU0k2SWxKcFltRWdSbW5EcVhKeVpYb2lMQ0psYldGcGJDSTZJbkJoZFM1eWFXSmhRR2hsYkhOcGJtY3VZV2tpZlEuSlVKTWYyU3lKWWEzNlpoVjVldFR3VmdTZ0dEV0FaRUYyUEdLXzd0SUoxdkJRSWh1OHhpOWxNVmN3VDBFdE9Vdi1xLWU4VnQ4Si1jQ09YeUhNdDFhbDRMRWFUNTJOa0EweDF4bXNxUXhrVVV5OXljT05td3NHbVhKaTZIR0dFYUZfM1N6MjNjd0FDX3NwRmNqRWVoTXJLWUJub0ZyV1h3NTlzTW5ZSnN0azZFVzNNSWdtQ3ZNUW41TTlRbHRMREpsbDJ1VTVndWREVUh2X3ZId3Y1Z3I1V3RzUnRDUjdfT2FSVEQycmkzOUVYOTJKZ0gwb0lvWGotbkxOb2FJTy00N0lJMFFSbmc2Rm9TWWUwM08tTlpUMlZxOEJ6NFV1V1FIQy1acE9pckxKRjdfaVhFdUNHeXhvZ0duU3EtVzE2TE1VZUhMYm9fVlBtd3ZzcktFSGRmUnpBIiwgInJlZnJlc2giOiAiZXlKaGJHY2lPaUpJVXpJMU5pSXNJblI1Y0NJZ09pQWlTbGRVSWl3aWEybGtJaUE2SUNKaE5tWmhaVEk1WkMxbU0yUmhMVFJoTXpNdE9HWTBNeTAyTWpZeFkyWmhaRFU1Tm1FaWZRLmV5SnBZWFFpT2pFMk9UQXlOelV4T0Rrc0ltcDBhU0k2SW1FME5HSXlNakEwTFdWaVlXSXROR1psTVMxaE5ERmpMV05rTWpsak9EUmtOemc1T1NJc0ltbHpjeUk2SW1oMGRIQnpPaTh2YTJWNVkyeHZZV3N1YUdWc2MybHVaeTFrWlhZdVlXa3ZZWFYwYUM5eVpXRnNiWE12YUdWc2MybHVaeUlzSW1GMVpDSTZJbWgwZEhCek9pOHZhMlY1WTJ4dllXc3VhR1ZzYzJsdVp5MWtaWFl1WVdrdllYVjBhQzl5WldGc2JYTXZhR1ZzYzJsdVp5SXNJbk4xWWlJNklqTTBObUkwT0RabExXTTVPVFV0TkRNM055MWhOMlV4TFRKaU56WTJNbVJqWm1ZME5TSXNJblI1Y0NJNklrOW1abXhwYm1VaUxDSmhlbkFpT2lKa1pYWnBZMlV0WTJ4cFpXNTBJaXdpYzJWemMybHZibDl6ZEdGMFpTSTZJakU0TWpobFpXRmtMVFprTnpFdE5ERTBaaTA1WVdRekxUVXdNalkxTXpnek5HVmhOaUlzSW5OamIzQmxJam9pYjNCbGJtbGtJRzltWm14cGJtVmZZV05qWlhOeklIQnliMlpwYkdVZ1pXMWhhV3dnYzNCcGJtVXRZbUZqYTJWdVpDSXNJbk5wWkNJNklqRTRNamhsWldGa0xUWmtOekV0TkRFMFppMDVZV1F6TFRVd01qWTFNemd6TkdWaE5pSjkucjBLT3ptWEtQVHBGY3dLNEU5MDE4V3hfSUxXTlJfQlM4ZlQ3STE5WUlPMCIsICJiZWFyZXJfZXhwaXJ5IjogMTY5MDI5MzE4OC43MzgzNTEsICJ2ZXJzaW9uIjogMX19

eval "$(starship init zsh)"

autoload -Uz compinit
zstyle ':completion:*' menu select
