function! Cello()
  silent! %g/^[:space:]*#include \(<Cello.*>\|"Cello.*"\)/set filetype=cello
  let @/ = ""
endfunction
au BufRead,BufWrite *.c*,*.h* call Cello()
