filetype off
execute pathogen#infect()
call pathogen#helptags()

syntax enable

colorscheme solarized
set background=dark

let python_highlight_all=1
syntax on
filetype plugin on
set noswapfile

" code folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

set autochdir
let mapleader = ","
let g:mapleader = ","

set tabstop=4
set softtabstop=4
set expandtab
set autoindent
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
nnoremap <leader>n :e ~/notes.txt<CR>
nnoremap <leader>rv :so $MYVIMRC<CR>
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>t :%s/\s$//<CR>:w<CR>:noh<CR>
imap <C-H> <ESC><C-H>
imap <C-J> <ESC><C-J>
imap <C-K> <ESC><C-K>
imap <C-L> <ESC><C-L>
" surround this character with spaces
nnoremap <leader>s i<space><ESC>la<space><ESC>
" ,h to find and replace the word under the cursor
nnoremap <leader>h *Ncw
nmap <C-R> V<C-C><C-C><ESC>j

set laststatus=2
set showtabline=2
set noshowmode
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

inoremap jj <ESC>:w<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'r'
set wildignore+=*.o,*.hi,*.asv
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

