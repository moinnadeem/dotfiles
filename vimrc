set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'dense-analysis/ale'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdcommenter'
Plugin 'arcticicestudio/nord-vim'
Plugin 'lifepillar/vim-solarized8'
Plugin 'fisadev/vim-isort'
Plugin 'psf/black'
Plugin 'github/copilot.vim'

" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'ra'
let g:ale_python_flake8_options = '--max-line-length=110' 
map <C-M> :w<CR> :!clear; make<CR> 
imap jk <Esc>  
imap kj <Esc>  
set expandtab
set shiftwidth=2
set tabstop=2
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray
set number relativenumber
set autoindent
set smartindent
set mouse=a
set runtimepath^=~/.vim/bundle/ctrlp.vim
set background=dark
set hlsearch
set cindent
set incsearch
"colorscheme nord 
"
let g:ale_enabled = 1
let g:ale_fixers = {'python': ["black", 'isort', "remove_trailing_lines", 'trim_whitespace']}
let g:ale_linters = {
      \   'python': ['flake8'],
      \   'ruby': ['standardrb', 'rubocop'],
      \   'javascript': ['eslint'],
      \}
let g:ale_fix_on_save = 0
let g:ale_python_flake8_options = '--ignore=E203,E402,PAI201,PAI202,W503 --max-line-length=140'
let g:ale_python_autopep8_options = '--select=E,W'
nmap <silent> <C-e> <Plug>(ale_next_wrap)

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
let g:ctrlp_clear_cache_on_exit = 0

set showtabline=2 " Always display the tabline, even if there is only one tab
nnoremap <F9> :!%:p<Enter><Enter>
set iskeyword-=_
