set nocompatible
set paste
set number
set cursorline
set hidden
set ruler
set background=dark
set tabstop=4
set shiftwidth=4
set incsearch
set expandtab
set autoindent
set rtp+=/usr/local/opt/fzf
let python_highlight_all = 1
filetype off                  " required
syntax enable
filetype indent on

" vundle config
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Begin plugin section

Plugin 'romain/vim-qf'
Plugin 'ThePrimeagen/vim-be-good'
Plugin 'stevearc/oil.nvim'
Plugin 'preservim/nerdcommenter'
Plugin 'dense-analysis/ale'
Plugin 'psf/black'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'tpope/vim-eunuch'
" Plugin 'sindrets/diffview.nvim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'python-mode/python-mode'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'andrewradev/splitjoin.vim'
Plugin 'aonemd/kuroi.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'hashivim/vim-terraform'
Plugin 'itchyny/vim-highlighturl'
Plugin 'jiangmiao/auto-pairs'                " Add matching brackets, quotes, etc
Plugin 'juliosueiras/vim-terraform-completion'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'                    " Fuzzy finder!
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'preservim/nerdtree'
Plugin 'puremourning/vimspector'
Plugin 'romainl/vim-cool'    
Plugin 'sheerun/vim-polyglot'
Plugin 'stephpy/vim-yaml'
Plugin 'strboul/urlview.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'fatih/vim-go'

" End Plugin section

call vundle#end()            " required
filetype plugin indent on    " required

" powerline config
set rtp+=$HOME/.pyenv/versions/3.10.1/lib/python3.10/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256
let g:airline_powerline_fonts = 1
" set term=xterm-256color
set termencoding=utf-8


" Syntastic Config
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" " (Optional)Remove Info(Preview) window
" set completeopt-=preview
" " (Optional)Hide Info(Preview) window after completions
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif
let g:loaded_python_provider = 0
let g:python3_host_prog = '$HOME/.pyenv/versions/3.10.1/bin/python'
set pyxversion=3

" terraform config
" (Optional) Enable terraform plan to be include in filter
let g:terraform_completion_keys = 1
let g:terraform_registry_module_completion = 0
let g:syntastic_terraform_tffilter_plan = 1
let g:syntastic_error_symbol = '🛑'
let g:syntastic_warning_symbol = '💀'
let g:terraform_align=1
let g:terraform_fmt_on_save=1


" python config
let g:pymode = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_indent = 1
let g:pymode_run = 1
nnoremap <F3> :! clear; python % <CR>
" airline config
let g:airline_theme='luna'

" gitgutter config
" let g:gitgutter_highlight_lines = 1
let g:gitgutter_async = 0

" key mapping 
command W w !sudo tee % >/dev/null
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
map <C-n> :NERDTreeToggle <CR>
nnoremap <F2> :set nonumber!<CR>
nnoremap <F5> :%!python -mjson.tool<CR>
nnoremap <F6> ZZ

" colorscheme config
" colorscheme 3dglasses

" slime config
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
" let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
set t_BE=
