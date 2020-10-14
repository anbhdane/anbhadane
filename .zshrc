# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/asdf/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

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
alias lt="ls -ltr"
alias c="clear"
alias ds="cd ~/Desktop"
alias dw="cd ~/Downloads"
alias dp="cd ~/Pictures"



alias f="free -h | awk '/^Mem:/{print$3 "/" $2}'"
alias phy411="echo Condensed Matter Physics;firefox https://classroom.google.com/c/MTUyMDA2MDYwOTYz"
alias phy411d="cd /home/asdf/Documents/physics/phy411"
alias phy411l1="cd /home/asdf/Documents/physics/phy411/phy411l1"

alias phy412="echo Statistical Mechanics;firefox https://classroom.google.com/c/MTUyNzEyMzYyNTMz"
alias phy412d="cd /home/asdf/Documents/physics/phy412"
alias phy412l1="cd /home/asdf/Documents/physics/phy412/phy412l1"

alias phy421="echo Advanced Optics;firefox https://classroom.google.com/c/NzE2ODA0NzA1MzZa"
alias phy421d="cd /home/asdf/Documents/physics/phy421"
alias phy421l1="cd /home/asdf/Documents/physics/phy421/phy421l1"

alias phy453="echo Computational Physics;firefox https://classroom.google.com/c/MTQzODIyOTI1NTg3"
alias phy453d="cd /home/asdf/Documents/physics/phy453"
alias phy453l1="cd /home/asdf/Documents/physics/phy453/phy453l1"

alias phy465="echo Soft Condesed Matter Physics;firefox https://classroom.google.com/c/MTMyMDkyMzYwMjQ3"
alias phy465d="cd /home/asdf/Documents/physics/phy465"
alias phy465l1="cd /home/asdf/Documents/physics/phy465/phy465l1"

alias phy324="echo Physics at Nanoscale;firefox https://classroom.google.com/c/NzA2NDkyNTgyNDBa"
alias phy324d="cd /home/asdf/Documents/physics/phy324"
alias phy324l1="cd /home/asdf/Documents/physics/phy324/phy324l1"

alias phy335="echo Electronics;firefox https://classroom.google.com/c/MTUyNjA0NzA1ODMw"
alias phy335d="cd /home/asdf/Documents/physics/phy335"
alias phy334l1="cd /home/asdf/Documents/physics/phy335/phy335l1"

alias phy341="echo Physics at Nanoscale;firefox https://classroom.google.com/c/NzA2NDkyNTgyNDBa"
alias phy341d="cd /home/asdf/Documents/physics/phy341"
alias phy341l1="cd /home/asdf/Documents/physics/phy341/phy341l1"

alias phy356="echo Group theory in Physics;firefox https://classroom.google.com/c/MTQzODIyNDYxODM5"
alias phy356d="cd /home/asdf/Documents/physics/phy356"
alias phy356l1="cd /home/asdf/Documents/physics/phy356/phy356l1"
alias phy356l2="cd /home/asdf/Documents/physics/phy356/phy356l2"

alias ecs324="echo Introduction to Geophysics"
alias ecs324d="cd /home/asdf/Documents/physics/ecs324"
alias ecs324l1="cd /home/asdf/Documents/physics/ecs324/ecs324l1"
alias curriculum="evince /home/asdf/Downloads/curriculum.pdf"








alias mail="firefox www.gmail.com"




alias lm="ls -l --block-size=M"
alias lg="ls -l --block-size=G"
alias fr="ffmpeg -f alsa -ac 2 -i pulse -f x11grab -r 30 -s 1366x768 -i :0.0 -acodec pcm_s16le -vcodec libx265 -preset ultrafast -crf 0 -threads 0 lec.mkv "
alias pa="pactl set-sink-volume 0"
alias dm="nautilus --browser"
















mcd(){
    mkdir "$1"
    cd "$1"
}
cdl(){
    cd "$1"
    ls
}
xcrysden(){
    cd /home/asdf/Documents/ok/xcrysden-1.6.2-linux_x86_64-shared/xcrysden-1.6.2-bin-shared
    ./xcrysden
    cd -
}
alias vv="vim ~/.vimrc"
alias vz="vim ~/.zshrc"
alias va="vim ~/.config/alacritty/alacritty.yml"
alias xg="xmgrace -batch temp.bfile -nosafe -hardcopy; sxiv test.png"

opacity(){
    test -z "$1" && exit 1
    perl -p -i -e 's/^background_opacity:\s*\S+/background_opacity: .'$1'/' ~/.config/alacritty/alacritty.yml
}
