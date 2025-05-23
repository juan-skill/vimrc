" danirod's public vimrc settings
" Author and maintainer: Dani Rodríguez <dani@danirod.es>
" Public backup at https://github.com/danirod/vimrc

" Stop acting like classic vi
set history=1000

" Settings about files
set encoding=utf-8
scriptencoding utf-8
filetype indent plugin on
set autoindent
set backspace=indent,eol,start
set hidden

" Settings for undofiles, swapfiles, other files
set undodir=~/.vim/undodir
set undofile
set noswapfile
set nobackup

" Colorscheme configuration
if &t_Co > 2
	syntax on

	" Nord
	let g:nord_cursor_line_number_background = 1
	let g:nord_uniform_diff_background = 1
	colorscheme slate

	" Syntax often gets messed up on files with multiple languages
	noremap <F12> <Esc>:syntax sync fromstart<CR>
	inoremap <F12> <C-o>:syntax sync fromstart<CR>
endif

" Mark trailing spaces depending on whether we have a fancy terminal or not
if &t_Co > 2
	highlight ExtraWhitespace ctermbg=1
	match ExtraWhitespace /\s\+$/
else
	set listchars=trail:~
	set list
endif

set fillchars+=vert:\┊
set noshowmode
set laststatus=1
set wildmenu
set wildoptions=pum

set nowrap
set number
set showmatch

nmap <C-N> :bnext<CR>
nmap <C-P> :bprev<CR>

let mapleader=','

tnoremap <Esc><Esc> <C-\><C-n>

" Multiple toggles terminal

" Mapper F12 to toggle terminal
nnoremap <silent> <F10> :FloatermToggle term1<CR>
tnoremap <silent> <F10> <C-\><C-n>:FloatermToggle term1<CR>

" Optional configurations to setup size of the floating terminal
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_autoclose=1

" auto close floating terminal when the process is finished
let g:floaterm_autoclose=2
