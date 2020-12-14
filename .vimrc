cnoremap uh <C-C>
cnoremap hu <C-C>

syntax enable
colorscheme desert

set backspace=indent,eol,start
let mapleader = ' '

"-----------Mappings-----------"

"Easier to edit vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>


"-----------Automatic-----------"
"Automatic source of vimrc file on save
autocmd BufWritePost .vimrc source %
