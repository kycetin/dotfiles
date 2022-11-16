syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set number
set hlsearch
set ruler
highlight Command ctermfg=green
set clipboard=unnamed
set nobackup
set noswapfile
set updatetime=100


let NERDTreeQuitOnOpen = 1
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1


let g:syntastic_python_checkers = ['flake8','mypy','python']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_flake8_args = "--ignore=W503"
let g:syntastic_python_flake8_args = "--ignore=W504"
let g:syntastic_python_flake8_args = "--ignore=D100"
let g:syntastic_python_flake8_args = "--ignore=D101"
let g:syntastic_python_flake8_args = "--ignore=D102"
let g:syntastic_python_flake8_args = "--ignore=D103"
let g:syntastic_python_flake8_args = "--ignore=D104"
let g:syntastic_python_flake8_args = "--max-line-length=120"
imap <c-x><c-f> :(fzf-complete-path)

command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, <bang>0)


call plug#begin()
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/preservim/tagbar.git'
Plug 'dense-analysis/ale'
call plug#end()


