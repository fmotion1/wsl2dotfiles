
alias codepwsh='code ~/dev/workspaces/pwsh.code-workspace'
alias codepython='code ~/dev/workspaces/python.code-workspace'
alias codeweb='code ~/dev/workspaces/web.code-workspace'
alias codebash='code ~/dev/workspaces/bashscripts.code-workspace'
alias codenode='code ~/dev/workspaces/node.code-workspace'
alias psprofile='sudo code /opt/microsoft/powershell/7/profile.ps1'

alias devwin='cd /mnt/d/dev'
alias dev='cd ~/dev/'

alias colortool="$HOME/scripts/colortool.sh"
alias colortest="$HOME/scripts/colortest.sh"

alias ll="ls -lhA --color=auto"
alias ls="ls -CF --color=auto"
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias cd..='cd ..'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias gr='grep -Rnif /dev/stdin . <<<'
alias vers='lsb_release -a'
alias mem="free -mt"

alias refresh='exec "$SHELL"; source ~/.bashrc'

alias bashrc="nano $HOME/.bashrc"
alias bashaliases='nano ~/.bash_aliases'
alias editpath="sudo nano /etc/environment"

alias nanocfg-user='nano ~/.nanorc'
alias nanocfg-system='sudo nano /etc/nanorc'
alias nanorules-default='cd /usr/share/nano'
alias nanorules-system='cd /usr/share/nano-syntax-highlighting'
alias nanorules-user='cd ~/.nano'

alias myip="curl http://ipecho.net/plain; echo"

alias psf="FindProcess"
alias ps="ps auxf"
alias upgrade='sudo apt-get autoremove; sudo apt-get autoclean; sudo apt-get update; sudo apt-get upgrade'
alias aptclean='sudo apt-get clean'
alias mkdir="mkdir -pv"
alias wget="wget -c"
alias gpush='GitPushAllInOne'


## Script to extract dominant colors from an image.
alias dcolors="$HOME/scripts/dcolors.sh"

function FindProcess(){
   if [ "$#" -ne 1 ]
   then
     echo "This function requires a single argument."
     exit 1
   fi

   ps aux | grep -v grep | grep -i -e VSZ -e $1
}

function GitPushAllInOne() {

    local commit_message=""

    while [ "$#" -gt 0 ]; do
      case "$1" in
        -m|--message)
          commit_message="$2"
          shift 2
          ;;
        *)
          echo "Unknown option: $1"
          return 1
          ;;
      esac
    done

    echo "Commit Message: $commit_message"

    git add .
    git commit -m "$commit_message"
    git push -u origin main
    gh browse
}
