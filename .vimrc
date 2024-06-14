set nocompatible              " be iMproved, required
filetype plugin indent on                  " required
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
Plugin 'tyru/open-browser.vim'
Plugin 'aklt/plantuml-syntax'
Plugin 'weirongxu/plantuml-previewer.vim'
Plugin 'jclsn/glow.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'Valloric/YouCompleteMe'
Plugin 'junegunn/fzf'
Plugin 'vim-ruby/vim-ruby'
Plugin 'sainnhe/everforest'
Plugin 'chazmcgarvey/vim-mermaid'
Plugin 'mcchrish/nnn.vim'
Plugin 'lervag/vimtex'
Plugin 'ionide/Ionide-vim'

" Vundle End
call vundle#end()
filetype plugin indent on

filetype plugin indent on
"
set tabstop=4
set shiftwidth=4
set expandtab
set timeout timeoutlen=3000 ttimeoutlen=100

let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

set number

set background=dark

let g:everforest_background = 'hard'
let g:everforest_better_performance = 1
let g:everforest_transparent_background = 1

colorscheme everforest

" Allow odt editing in vim
autocmd BufReadPost *.odt :%!odt2txt %
