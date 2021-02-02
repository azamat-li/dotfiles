syntax enable;

set backspace=indent,eol,start
let mapleader = ' ' 				"the default leader is \, but hitting space is easier
set number					"let's activate line numbers
set linespace=26				"gui vim spicific line space, e.g. vscode vim or ideavim
set nocompatible              			"be iMproved, required for Vundle, using latest Vim settings/options.
set clipboard
set noswapfile  				"no swap as git is enough

"  Tabs
" tabstop:          Width of tab character
" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal mode
" expandtab:        When this option is enabled, vi will use spaces instead of tabs
set tabstop =2
set shiftwidth =2
set shiftwidth =2
set noexpandtab


" Delete & forget 
nmap <Leader>d "_d


"-----------For Php-----------"
" Insert ';' to the end of line
nmap <Leader>e g_a;<Esc>


" Delete ';' at the end of line
nmap <Leader>E g_dl<Esc>


" Surrond tag with new <div> tag 
nmap <Leader>st ysit<div>




"-----------Searching-----------"
"
set hlsearch			
set incsearch









"----------Visually Prettier-----------"
colorscheme morning

set t_CO=256					"Use 256 colors. This is useful for terminal Vim.

set guifont=Fira_Code:h17

"No scrollbars at all
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R



"-----------Normal Mode Mappings-----------"

"Easier to edit .vimrc file
nmap <Leader>ev :tabedit ~/.vimrc<cr>

"Easier to edit plugins file
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>

"Easier to edit .zshrc file
nmap <Leader>ez :tabedit ~/.zshrc<cr>

"Simple search highlight removal
nmap <Leader>, :nohlsearch<cr>

nmap <Leader>h :w<cr>


"----To Start editing------'

"Append to the end of word
nnoremap <Leader>a ea

"Prepend to the beginnig of word
nnoremap <Leader>p bi

 
"-----------Visual Mode mappings---------"
" Enter normal mode pressing ;;  as alternative to hitting Escape button
imap ;; <Esc>					



"-----------Automatic-----------"
"Automatic source of vimrc file on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END




"-----------Plugins-----------"
" For loading plugins from ~/.vim directory
"so ~/.vim/plugins.vim


"----vim-surrond tweaking"

" Surround tag
nmap <Leader>st ySat


"------------Code Snippets------------------
nnoremap <Leader>test i<Return>/** @test */<Return> public function _()<Return> {<Return> } <Return><Esc>4k

nnoremap <Leader>attr i$attributes<Space><Esc>
nnoremap <Leader>desc icontext(' ', () => {<Return> beforeEach(() => {<Return> cy.visit('https://.test')<Return> })<Return> <Return> it('', () => { <Return> <Return> }) <Return>}) <Return>

nmap <Leader>dett  <Return> it('', () => { <Return> <Return> }) <Return>}) <Return><Esc>



"------------Split management-----------------
set splitbelow
set splitright
nmap  <C-J> <C-W><C-J>
nmap  <C-K> <C-W><C-K>
nmap  <C-H> <C-W><C-H>
nmap  <C-L> <C-W><C-L>






