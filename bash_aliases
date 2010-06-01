if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

alias gen_hg="dd if=/dev/urandom of=/dev/stdout bs=1024 count=4 2> /dev/null | md5sum - | cut -c 1-16"

alias win2utf="iconv -f cp1251 -t utf-8"
alias utf2win="iconv -f utf-8 -t cp1251"
