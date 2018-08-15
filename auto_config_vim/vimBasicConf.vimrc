" vundle settings {{{
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()

	"call vundle#begin('~/some/path/here')

	Plugin 'VundleVim/Vundle.vim'

	if filereadable(expand('$HOME/.vim/vimrc.bundles'))
		source $HOME/.vim/vimrc.bundles
	endif


	call vundle#end()

	filetype indent on

	" filetype plugin on

" }}}

" vim map {{{
	let mapleader=";"
	nmap <Leader>q :q<CR>
	nmap <Leader>1 :q!<CR>
	nmap <Leader>w :w<CR>
	nmap <Leader>x :x<CR>
	nmap <Leader>h <C-w>w
	nmap <Leader>m :nohl<CR>
	vnoremap <Leader>y "+y
	nmap <Leader>p "+p
" }}}

" vim options {{{
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
	set shortmess=atI   
	set autoread

	filetype off

	set cursorline
	set cursorcolumn
	colorscheme joit
	if has("syntax")
		syntax on
		let python_highlight_all=1
	endif
	set number
	set showcmd
	set scrolloff=3
	set backspace=indent,eol,start
	set showmatch
	set hlsearch
	set autoindent
	set smartindent "智能缩进"
	set cindent "C语言风格缩进"
	set shiftwidth=4
	set tabstop=4
	set softtabstop=4
	set foldmethod=indent
	set foldlevel=99
	nnoremap <space> za	" Enable folding with the <space>
	set nobackup
	set noswapfile
	" set mouse=a
	" set selection=exclusive
	" set selectmode=mouse,key
	set autowrite
	set encoding=utf-8
" }}}

" au BufNewFile,BufRead *.py
"     \ set tabstop=4 |
"     \ set softtabstop=4 |
"     \ set shiftwidth=4 |
"     \ set autoindent |
"     \ set fileformat=unix
" 
" au BufNewFile,BufRead *.js, *.html, *.css, *.yml
" 	\ set tabstop=2 |
" 	\ set softtabstop=2 |
" 	\ set shiftwidth=2
" 