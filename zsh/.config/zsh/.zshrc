# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

setopt auto_cd
# set vim keybindings 
bindkey -v

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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

HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# PLUGINS ----------------------------------------------------
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
	colorize
	colored-man-pages
	extract
	zsh-autosuggestions
	zsh-syntax-highlighting)


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi


# Set default Editor
# export EDITOR=/usr/bin/vim
export EDITOR=nvim
export VISUAL=nvim
# export PATH="$PATH:`yarn global bin`"

# Set MacOS Homebrew dir
export PATH="/usr/local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

# Set nnn environment variables
export NNN_BMS='x:/Users/felixhassemer/Nextcloud/xobrain;d:/Users/felixhassemer/Downloads;t:~/.local/share/Trash/files'
export NNN_TRASH=1
export NNN_PLUG='d:diffs;f:finder;o:fzoeen;d:diffs;t:nmount;v:imgview;g:preview-tui'
export NNN_FIFO=/tmp/nnn.fifo

# Set fcitx environment variables 
export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'
export GLFW_IM_MODULE='ibus'

# Set qt application styling env variables
# export QT_QPA_PLATFORMTHEME='qt5ct'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# ALIASES -------------------------------------------
alias shutdown="shutdown -h now"
alias ls="ls --color=auto -a"
alias cl="clear"
alias n="nnn -e -d"
alias q="exit"
alias v="vim"
alias nv="nvim"
alias tmux="tmux -2"
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ack="ack -i -C 3"
alias f="fzf"
alias calc="qalc -i"
alias zshconfig="nvim ~/.config/zsh/.zshrc"
alias reload=". ~/.config/zsh/.zshrc"
alias wttr="curl wttr.in/hamburg"


eval "$(starship init zsh)"
