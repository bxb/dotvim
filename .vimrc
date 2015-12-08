filetype off
execute pathogen#infect()
call pathogen#helptags()

syntax enable
colorscheme solarized
set background=dark

syntax on 
filetype plugin on

set autochdir
let mapleader = ","
let g:mapleader = ","

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set showmatch
set ignorecase
set smartcase
set incsearch
set hlsearch
set scrolloff=5
set cursorline
set clipboard=unnamed

map <leader><space> :noh<CR>
map <leader>j :bprev<CR>
map <leader>k :bnext<CR>
map <leader>, :bprev<CR>
nnoremap .. :bnext<CR>
nnoremap <leader>- <C-w>s<C-w>j
nnoremap <leader>\| <C-w>v<C-w>l
nnoremap <leader>w <C-w>q
nnoremap <leader>x :bd<CR>
nnoremap <leader>rv :so $MYVIMRC<CR>
nnoremap <leader>ev :e $MYVIMRC<CR>
imap <C-H> <ESC><C-H>
imap <C-J> <ESC><C-J>
imap <C-K> <ESC><C-K>
imap <C-L> <ESC><C-L>

set laststatus=2
set showtabline=2
set noshowmode
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

inoremap jj <ESC>:w<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0
set wildignore+=*.o,*.hi
nnoremap <leader>p :CtrlPMixed<CR>
au FocusLost * :wa

" Settings for jedi-vim
" " cd ~/.vim/bundle
" " git clone git://github.com/davidhalter/jedi-vim.git
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

let g:slime_target = "tmux"

