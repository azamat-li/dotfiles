syntax enable;

set backspace=indent,eol,start
let mapleader = ' ' 				"the default leader is \, but hitting space is easier
set number									"let's activate line numbers
set linespace=8						"gui vim spicific line space, e.g. vscode vim or ideavim
set nocompatible           	"use only vim
set clipboard
set noswapfile  						"	no swap as git is enough

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


"-----------Searching-----------"
"
set hlsearch			
set incsearch


"----------Visually Prettier-----------"
colorscheme morning

"set t_CO=256					"Use 256 colors. This is useful for terminal Vim.

"set guifont=Fira_Code

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
"autocmd BufWritePost .vim/plugins.vim source %
augroup END




"-----------Plugins--------------"
" For loading plugins from ~/.vim directory
so ~/.vim/plugins.vim


"-----------Vim Surrond----------"

" Surround tag
nmap <Leader>st ySat

" Surrond tag with new <div> tag 
nmap <Leader>st ysit<div>




"------------Code Snippets------------------
nnoremap <Leader>test i<Return>/** @test */<Return> public function _()<Return> {<Return> } <Return><Esc>4k

nnoremap <Leader>attr i$attributes<Space><Esc>
nnoremap <Leader>desc icontext(' ', () => {<Return> beforeEach(() => {<Return> cy.visit('https://.test')<Return> })<Return> <Return> it('', () => { <Return> <Return> }) <Return>}) <Return>

nmap <Leader>dett  <Return> it('', () => { <Return> <Return> }) <Return>}) <Return><Esc>
nmap <Leader>dc icy.get('[data-cy=]')<c-e>


"------------Split management-----------------
set splitbelow
set splitright
nmap  <C-J> <C-W><C-J>
nmap  <C-K> <C-W><C-K>
nmap  <C-H> <C-W><C-H>
nmap  <C-L> <C-W><C-L>



"------------Nerd tree-----------------
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif



"------------Postgre Sql-----------------
let g:sql_type_default = 'pgsql'

