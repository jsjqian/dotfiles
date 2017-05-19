alias classes='cd /c/Users/Jack/Desktop/Classes'
alias terplance='cd /c/Users/Jack/Desktop/TerpLance'
alias forms='cd /c/Users/Jack/Desktop/Forms'
alias github='cd /c/Users/Jack/Documents/GitHub'
alias swipl="~/Documents/swipl/bin/swipl"
alias swiplw="~/Documents/swipl/bin/swipl-win.exe"
alias testzone="cd /c/Users/Jack/Desktop/TestZone"
alias weather="curl wttr.in/college_park"
alias logs="cd /c/Users/Jack/Desktop/logs"
alias 417vm="ssh -p 3022 user@127.0.0.1"
alias 417vmX="ssh -X -p 3022 user@127.0.0.1"

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

export ANDROID_HOME="C:\\Users\\Jack\\AppData\\Local\\Android\\sdk"
export JAVA_HOME="C:\\Program Files\\Java\\jdk1.8.0_51"
export NVM_DIR="/c/Users/Jack/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="$PATH:/c/Python27"
export PATH="$PATH:/c/Users/Jack/AppData/Roaming/npm/"
export PATH="$PATH:/c/Users/Jack/AppData/Local/Android/sdk/platform-tools"
export PATH="$PATH:/c/Program Files/MongoDB/Server/3.2/bin"
export PATH="$PATH:/c/Program Files/Java/jdk1.8.0_102/bin"
export PATH="$PATH:/c/Program Files/Heroku/bin"
export PATH="$PATH:/c/Users/Jack/AppData/Local/.meteor"
