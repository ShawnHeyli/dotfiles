function cap --wraps=bat\ --paging=never\ --style=\'plain\' --wraps=wl-copy --wraps=wl-copy\ \&\&\ echo\ \'Copied\ to\ clipboard\ !\' --wraps='wl-copy <' --description 'alias cap=wl-copy <'
  wl-copy < $argv
        
end
