" vim settings

execute pathogen#infect()

syntax on
syntax enable
filetype plugin indent on
colorscheme monokai
set textwidth=80
set wrapmargin=2

" highlight complete line
set cursorline

" indentation is 2 spaces, no tabs
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2

" highlight lines that are too long
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" enable gradle syntax highlighting
au BufNewFile,BufRead *.gradle setf groovy

" highlight trailing spaces
match ErrorMsg '\s\+$'

" high visibility for diff mode
let g:solarized_diffmode="high"
let g:monokai_diffmode="high"

" select ECMAScript syntax checker
let g:syntastic_javascript_checkers=['standard']

" Always syntax highlight complete file
autocmd BufEnter * :syntax sync fromstart

" EOF
