function ls --wraps='exa --binary --classify -a' --description 'alias ls=exa --binary --classify -a'
  exa --binary --classify -a $argv
        
end
