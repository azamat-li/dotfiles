
"----------Vundle-------------"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " required

" Plugin 'tpope/vim-surround'
" Plugin 'tpope/vim-vinegar'

" Project tree sidebar 

Plugin 'preservim/nerdtree'

Plugin  'lifepillar/pgsql.vim'

Plugin 'vim-scripts/browser.vim'

Plugin 'mg979/vim-visual-multi'

Plugin 'ycm-core/YouCompleteMe'

" Plugin 'morhetz/gruvbox' 




call vundle#end()            " required
filetype plugin indent on    " required



