set nocompatible              " be iMproved, required
filetype plugin on                  " required
syntax on

" Init Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" VimWiki

" Set VimWiki to Markdown
let g:vimwiki_ext2syntax = {'.md': 'markdown'}
let g:vimwiki_list = [{'path': '~/ecjcp-fnraf/', 
            \ 'auto_diary_index': 1,
            \ 'auto_generate_links': 1,
            \ 'syntax': 'markdown',
            \ 'ext': '.md'}]

" Auto generate vim-wiki indices
autocmd FileType vimwiki if expand('%:t') == 'index.md' | execute 'VimwikiGenerateLinks' | endif

" Vundle Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'Valloric/YouCompleteMe'

" Vundle End
call vundle#end()
filetype plugin indent on

filetype plugin indent on
"
set tabstop=4
set shiftwidth=4
set expandtab

let g:ycm_confirm_extra_conf = 0

set number
