set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'VundleVim/Vundle.vim'

" My bundles here:
"
" original repos on GitHub
Plugin 'tpope/vim-fugitive'
" Plugin 'tpope/vim-rails'
" Plugin 'tpope/vim-surround'
Plugin 'Lokaltog/vim-easymotion'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tomasr/molokai'
" Plugin 'davidhalter/jedi-vim'
" let g:jedi#show_call_signatures = 0
" Plugin 'fisadev/vim-isort'
" Plugin 'itchyny/lightline.vim'
" set laststatus=2
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_user_command = {
    \ 'types': {
        \ 1: ['.git', 'cd %s && git ls-files -co --exclude-standard'],
        \ 2: ['.hg', 'hg --cwd %s locate -I .'],
        \ },
    \ 'fallback': 'find %s -type f'
    \ }
Plugin 'w0rp/ale'
let g:ale_javascript_eslint_executable = 'eslint_d'
let g:ale_lint_on_save = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:ale_linters = {
\   'python': ['flake8', 'flake8-commas', 'flake8-import-order', 'flake8-quotes'],
\   'javascript': ['eslint'],
\}
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
" Plugin 'scrooloose/nerdcommenter'
" Plugin 'saltstack/salt-vim'
Plugin 'scrooloose/nerdtree'
let NERDTreeBookmarksFile=expand("$HOME/.vim-NERDTreeBookmarks")
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1

Plugin 'groenewege/vim-less'
" Plugin 'hdima/python-syntax'
Plugin 'leafgarland/typescript-vim'
" Plugin 'luochen1990/rainbow'
let g:rainbow_active = 1

Plugin 'derekwyatt/vim-scala'
nnoremap <localleader>t :EnTypeCheck<CR>
au FileType scala nnoremap <localleader>df :EnDeclarationSplit v<CR>

Plugin 'Raimondi/delimitMate'

Plugin 'honza/vim-snippets'

Plugin 'jmcantrell/vim-virtualenv'

Plugin 'othree/yajs.vim'
Plugin 'othree/es.next.syntax.vim'
Plugin 'ternjs/tern_for_vim'
Plugin 'elzr/vim-json'

"Plugin 'Yggdroot/indentLine'

" vim-scripts repos
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'rking/ag.vim'

"Go"
Plugin 'fatih/vim-go'
Plugin 'stamblerre/gocode', {'rtp': 'vim/'}

let g:rainbow_active = 1
" Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'
" 
" Plugin 'jmcantrell/vim-virtualenv'
" 
" "Plugin 'Yggdroot/indentLine'
" 
Plugin 'heavenshell/vim-pydocstring'
" 
" Plugin 'lervag/vimtex'
" 
" Plugin 'szw/vim-tags'
Plugin 'jelera/vim-javascript-syntax'
call vundle#end()
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
"
"

"set rtp+=$GOPATH/src/golang.org/x/lint/misc/vim
"autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow
"
set incsearch

set t_Co=256
colorscheme molokai
syntax on
set backspace=indent,eol,start
set number
" set relativenumber

set listchars=tab:>─,trail:·,extends:>,precedes:<
set list

autocmd Filetype python setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=4 colorcolumn=80
autocmd Filetype go setlocal noexpandtab tabstop=8 softtabstop=8 shiftwidth=8 colorcolumn=80
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=8 shiftwidth=8
autocmd Filetype dosini setlocal colorcolumn=80
autocmd Filetype tex setlocal expandtab tabstop=2 shiftwidth=2 colorcolumn=80 spell spelllang=en_gb
autocmd FileType html setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType less setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 colorcolumn=80
autocmd Filetype json setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype yaml setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2
autocmd Filetype cucumber setlocal expandtab tabstop=4 shiftwidth=4 colorcolumn=80
autocmd Filetype markdown setlocal expandtab colorcolumn=80 tw=79
set mouse=a
set cursorline


set clipboard=unnamedplus

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif
