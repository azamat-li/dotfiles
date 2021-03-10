
syntax enable;

" AO Russian support langmap
"set langmap=АОЕУИДХТНСПЫФГЦРЛЙКЬБМВЖЗ;AOEUIDHTNSPYFGCRLJKXBMWVZ,аоеуидхтнспыфгцрлйкьбмвжз;aoeuidhtnspyfgcrljkxbmwvz

set backspace=indent,eol,start
let mapleader = ' ' 				"the default leader is \, but hitting space is easier
set number									"let's activate line numbers
set linespace=0						"gui vim spicific line space, e.g. vscode vim or ideavim
set nocompatible           	"use only vim
set clipboard
set noswapfile  						"	no swap as git is enough
set so=7
"  Tabs
" tabstop:          Width of tab character
" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal mode
" expandtab:        When this option is enabled, vi will use spaces instead of tabs
" set tabstop =2
" set shiftwidth = 2
" set noexpandtab
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,

nnoremap <C->
  

"Resize vsplit
nmap <C-v> :vertical resize +5<cr>
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>


"-----------CtrlP staff-----------"
" I don't want to pull up these folders/files when calling CtrlP
set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**


" Delete & forget 
nmap <Leader>d "_d



"-----------Searching-----------"
"
set hlsearch			
set incsearch


"----------Visually Prettier-----------"
" Theme
" autocmd vimenter * ++nested colorscheme gruvbox

" colorscheme morning
" colorscheme bluewery-light
let g:lightline = { 'colorscheme': 'bluewery_light' }

set t_CO=256					"Use 256 colors. This is useful for terminal Vim.

" set your colorscheme, developer
colorscheme bluewery-light

set guifont=Optima-BoldItalic:h14
"set guifont=Optima-Italic:h14

"No scrollbars at all
set guioptions-=l
set guioptions-=L;
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

"-----------i18n attempts---------"
nnoremap <Leader>s :w!<cr>

"-----------i18n attempts---------"
nnoremap <Leader>ц :w!<cr>


 
"-----------Visual Mode mappings---------"

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
nmap  <C-J> <C-W><C-J>;
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



"------------Quick Search-----------------
nmap <Leader>f :tag<space>
nmap <Leader>t :ts<space>
nmap <Leader>l :bn<cr>
nmap <Leader>h :bp<cr>

" Motions
nmap <Leader>s :w<cr>



"------------Ctrl P-----------------
nnoremap <Leader>g :CtrlPBuffer
nnoremap <Leader>G :CtrlP


"------------Personal abbreviations-----------------
iabbrev nname Gabdulgazim Galiullin
iabbrev mmail azamatalifullstack@gmail.com



"------------Use Cypress, tester-----------------
iabbrev ddCC  '[data-cy=]'
iabbrev ddcc  data-cy=""


"------------Type easier, scaffolder-----------------
iabbrev desc description
iabbrev desc description

    
" Move inside laravel
source ~/.vim/bundle/mi-laravel/plugin/mi-laravel.vim


" Use folding, php developer
" Use rayburgemeestre/phpfolding.vim
map <F6> <Esc>:EnablePHPFolds<Cr>
map <F7> <Esc>:DisablePHPFolds<Cr>


" Test your server, php unit tester
iabbrev sskip $this->markTestSkipped('must be revisited.');

"------------Simple Vim commentator version-----------------
:autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
:autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>



" Notes and Tips
" control ]  go to method declaration
" cortrol ^  go back
" choose font   set guifont:* 
"
" Replace in dir
" :args spec/javascripts/**/*.* 
" silent! argdo %s/foo/bar/g | update



