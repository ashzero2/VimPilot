function! Cheat(...)
  let url="www.google.com"
  let file=&filetype
  let args=join(a:000)
  execute('%! curl -s "https://cht.sh/'. file .'/'. args .'?QT"')
endfunction

function! NCheat(...)
  let url="www.google.com"
  let file=&filetype
  let args=join(a:000)
  execute('% curl -s "https://cht.sh/'. file .'/'. args .'?QT"')
endfunction

command! -nargs=* Cheat call Cheat(<f-args>)
command! -nargs=* NCheat call NCheat(<f-args>)
