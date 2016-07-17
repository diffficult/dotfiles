# Path to your oh-my-zsh installation.
  export ZSH=/home/poole/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="remy"
ZSH_THEME="spaceship"
#ZSH_THEME="sorin"
#ZSH_THEME="flazz"
#ZSH_THEME="intheloop"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git web-search per-directory-history virtualenv pip)

# User configuration

  export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias infinalityconf="sudo bash /etc/fonts/infinality/infctl.sh setstyle"

#Powerline
#. /home/poole/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

alias rlxresources="xrdb ~/.Xresources"
alias rlzshrc="source ~/.zshrc"
alias winfetch="clear && neofetch --ascii --ascii_distro windows"

# Functions
#
# Some people use a different file for functions
# if [ -f "${HOME}/.bash_functions" ]; then
#   source "${HOME}/.bash_functions"
# fi
#
# Some example functions:
#
# a) function settitle
# settitle () 
# { 
#   echo -ne "\e]2;$@\a\e]1;$@\a"; 
# }
# 
# b) function cd_func
# This function defines a 'cd' replacement function capable of keeping, 
# displaying and accessing history of visited directories, up to 10 entries.
# To use it, uncomment it, source this file and try 'cd --'.
# acd_func 1.0.5, 10-nov-2004
# Petar Marinov, http:/geocities.com/h2428, this is public domain
# cd_func ()
# {
#   local x2 the_new_dir adir index
#   local -i cnt
# 
#   if [[ $1 ==  "--" ]]; then
#     dirs -v
#     return 0
#   fi
# 
#   the_new_dir=$1
#   [[ -z $1 ]] && the_new_dir=$HOME
# 
#   if [[ ${the_new_dir:0:1} == '-' ]]; then
#     #
#     # Extract dir N from dirs
#     index=${the_new_dir:1}
#     [[ -z $index ]] && index=1
#     adir=$(dirs +$index)
#     [[ -z $adir ]] && return 1
#     the_new_dir=$adir
#   fi
# 
#   #
#   # '~' has to be substituted by ${HOME}
#   [[ ${the_new_dir:0:1} == '~' ]] && the_new_dir="${HOME}${the_new_dir:1}"
# 
#   #
#   # Now change to the new dir and add to the top of the stack
#   pushd "${the_new_dir}" > /dev/null
#   [[ $? -ne 0 ]] && return 1
#   the_new_dir=$(pwd)
# 
#   #
#   # Trim down everything beyond 11th entry
#   popd -n +11 2>/dev/null 1>/dev/null
# 
#   #
#   # Remove any other occurence of this dir, skipping the top of the stack
#   for ((cnt=1; cnt <= 10; cnt++)); do
#     x2=$(dirs +${cnt} 2>/dev/null)
#     [[ $? -ne 0 ]] && return 0
#     [[ ${x2:0:1} == '~' ]] && x2="${HOME}${x2:1}"
#     if [[ "${x2}" == "${the_new_dir}" ]]; then
#       popd -n +$cnt 2>/dev/null 1>/dev/null
#       cnt=cnt-1
#     fi
#   done
# 
#   return 0
# }
# 
# alias cd=cd_func
# 
# Functions
function colortest-gradients2
{
    echo -e '\033[m'
    for i in {0..7}; do
        for f in {0..7}; do
            echo -en "\033[$((f+30))m██▓▒░"
        done
        echo -e '\033[m'
    done
    echo -e '\033[m'
}

function colortest-vbars
{
    clear
    
    local _term_width=$(tput cols)
    local _term_height=$(tput lines)
    local _bar_count=8
    local _bar_width=$(expr $_term_width / $_bar_count)
    
    local l="1"
    local b="0"
    local s="0"
    
    while [[ "$l" -lt $_term_height ]]; do
        b="0"
        while [[ "$b" -lt $_bar_count ]]; do
            s="0"
            while [[ "$s" -lt $_bar_width ]]; do
                echo -en "\033[3"$b"m█"
                s=$(expr $s + 1)
            done
            b=$(expr $b + 1)
        done
        echo
        l=$(expr $l + 1)
    done
}

function whodemon
{
    # Finally usefull.
 
    demons=(
    "Who is this anal aficionado?"
    "Who is this anus ignoramus?"
    "Who is this baby batter bladder?"
    "Who is this baby batter bringer?"
    "Who is this ball butter nutter?"
    "Who is this ballbiting ballerina?"
    "Who is this ballsack knapsack?"
    "Who is this baloney poney behemoth?"
    "Who is this beef curtain hurtin?"
    "Who is this benis burglar?"
    "Who is this boner benefactor?"
    "Who is this boner condoner?"
    "Who is this boner toner?"
    "Who is this butt hut?"
    "Who is this chin chin bin?"
    "Who is this chode road?"
    "Who is this cock captain?"
    "Who is this cock clairvoyant?"
    "Who is this cock commandant?"
    "Who is this cock cream captivator?"
    "Who is this cock dock?"
    "Who is this cock khan?"
    "Who is this cock pocket?"
    "Who is this cock sock?"
    "Who is this cock stock?"
    "Who is this column culminator?"
    "Who is this cum caresser?"
    "Who is this cum chum?"
    "Who is this cum connoisseur?"
    "Who is this cum drum?"
    "Who is this cum plum?"
    "Who is this cummander?"
    "Who is this cunny bunny?"
    "Who is this cunt colonel?"
    "Who is this cunt runt?"
    "Who is this dick dastard?"
    "Who is this dick duchess?"
    "Who is this dick juice masseuse?"
    "Who is this dick tick?"
    "Who is this ding dong dungeon?"
    "Who is this dong deity?"
    "Who is this dong dominator?"
    "Who is this dongle mongle?"
    "Who is this ejaculate advocate?"
    "Who is this ejaculate empress?"
    "Who is this erection confection?"
    "Who is this erection ejection?"
    "Who is this fluid druid?"
    "Who is this foreskin fornicator?"
    "Who is this frenulum fractionizer?"
    "Who is this glans fans?"
    "Who is this glans gladiator?"
    "Who is this jism prism?"
    "Who is this jism prison?"
    "Who is this jizz genie?"
    "Who is this jizz jezebel?"
    "Who is this jizz jockey?"
    "Who is this jizz wiz?"
    "Who is this knackers knight?"
    "Who is this lewd lieutenant?"
    "Who is this lovegoo lass?"
    "Who is this male repoductive organ gorgan?"
    "Who is this man milk mephistopheles?"
    "Who is this man muscle steam shovel?"
    "Who is this mattress actress?"
    "Who is this mayonnaise maiden?"
    "Who is this meat major?"
    "Who is this middle leg major?"
    "Who is this nut slut?"
    "Who is this orifice officer?"
    "Who is this pecker prodigy?"
    "Who is this penile perpetrator?"
    "Who is this penile private?"
    "Who is this penis machinist?"
    "Who is this phallus chalice?"
    "Who is this phallus phalanx?"
    "Who is this pillar pimper?"
    "Who is this pocket rocket ground control?"
    "Who is this pole populator?"
    "Who is this pole privateer?"
    "Who is this prick chick?"
    "Who is this prick pirate?"
    "Who is this prostate apostate?"
    "Who is this prostate magistrate?"
    "Who is this rear admiral?"
    "Who is this salami tsunami?"
    "Who is this sausage sergeant?"
    "Who is this schlong sentinel?"
    "Who is this schlong sorcerrer?"
    "Who is this scrotum sorceress?"
    "Who is this scrotum totem?"
    "Who is this seed steed?"
    "Who is this semen demon?"
    "Who is this semen sommelier?"
    "Who is this seminal fluid druid?"
    "Who is this seminal sentinel?"
    "Who is this shaft shaft?"
    "Who is this shaft specialist?"
    "Who is this skeet treat?"
    "Who is this smega smuggler?"
    "Who is this smegma enigma?"
    "Who is this smegma savant?"
    "Who is this smegma smuggler?"
    "Who is this smut sergeant?"
    "Who is this sodomy sentinel?"
    "Who is this sperm specialist?"
    "Who is this sperm summoner?"
    "Who is this sperm worm?"
    "Who is this spooge scrooge?"
    "Who is this spunk monk?"
    "Who is this spunk trunk?"
    "Who is this stiffy stimulator?"
    "Who is this stiffy sultan?"
    "Who is this testicle tamer?"
    "Who is this testicle vestibule?"
    "Who is this testicular temptress?"
    "Who is this the semen demon?"
    "Who is this wang waxer?"
    "Who is this wang wizard?"
    "Who is this wang wrangler?"
    "Who is this weenie genie?"
    "Who is this weiner witch?"
    "Who is this wiener cleaner?"
    "Who is this wiener witch?"
    "Who is this willy ghillie?"
    "Who is this willy wrap?"
    )
   
    echo ${demons[$RANDOM % ${#demons[@]} ]}
}

colortest-skull () 
{ 
echo -e "
\033[31m███████████████████████████
\033[32m███████▀▀▀░░░░░░░▀▀▀███████
\033[33m████▀░░░░░░░░░░░░░░░░░▀████
\033[34m███│░░░░░░░░░░░░░░░░░░░│███
\033[35m██▌│░░░░░░░░░░░░░░░░░░░│▐██
\033[36m██░└┐░░░░░░░░░░░░░░░░░┌┘░██
\033[37m██░░└┐░░░░░░░░░░░░░░░┌┘░░██
\033[31m██░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░██
\033[32m██▌░│██████▌░░░▐██████│░▐██
\033[33m███░│▐███▀▀░░▄░░▀▀███▌│░███
\033[34m██▀─┘░░░░░░░▐█▌░░░░░░░└─▀██
\033[35m██▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄██
\033[36m████▄─┘██▌░░░░░░░▐██└─▄████
\033[37m█████░░▐█─┬┬┬┬┬┬┬─█▌░░█████
\033[31m████▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐████
\033[32m█████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████
\033[33m███████▄░░░░░░░░░░░▄███████
\033[34m██████████▄▄▄▄▄▄▄██████████
\033[35m█████████ H O L A █████████
\033[36m███████████████████████████
"
}

function this-is-bait  
{ 
echo -e "
\033[35m██████████████████████████████████████
\033[35m█░░░█░█░█░█░░███░█░░███░░▀█▀░▀█░█░░░██
\033[35m██░██░▀░█░█░▀███░█░▀███░▀▄█░▀░█░██░███
\033[35m██░██░▄░█░█▄░███░█▄░███░▄▀█░▄░█░██░███
\033[35m██░██░█░█░█░░███░█░░███░░▄█░█░█░██░█░█
\033[35m██████████████████████████████████████
\033[35m███████▀▀░░░▄███████████▀▀▀▀░░░░░░░▀▀▀
\033[35m█████▀░░░░▄██████▀▀▀░░░░░▄▄▄▄█████▄▄▄▄
\033[35m███▀░░▄█▄████▀▀░░░▄▄▄█████████████████
\033[35m███░░█████▀▀░░▄▄██████████████▀▀▀▀▀▀▀░
\033[35m███▄░░░▀▀░░▄▄████████▀▀▀▀░░░░░░░░░░░░░
\033[35m██████▄▄▄▄██████▀▀░░░░░░░▄▄░░░░░░░░░░░
\033[35m██████████████████▄▄▄░░░▀██▀░░░░░░░░░░
\033[35m████████████████▀▀▀▀▀▀▀░░░░░░░░░░░░░░░
"
}

# Go Language path 
# Go programs stored on /home/user/Go/bin

export GOPATH=$HOME/Go
 

