if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'wsdjeg/vim-fetch'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

set ignorecase
set showmode
set ruler
set showmatch
set nowrap
set number
set autoindent
set smartindent
set expandtab
set hlsearch
set incsearch
set tabstop=2
set shiftwidth=2
set backspace=indent,eol,start
autocmd Filetype php setlocal ts=4 sts=4 sw=4
autocmd filetype go setlocal noexpandtab ts=4 sts=4 sw=4

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

syntax on
