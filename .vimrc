filetype off
execute pathogen#infect()
call pathogen#helptags()

syntax enable
colorscheme wombat
" set background=dark

let python_highlight_all=1
syntax on 
filetype plugin on

" code folding
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
nnoremap <space> za
set foldlevelstart=2

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
set backspace=indent,eol,start

map <leader><space> :noh<CR>
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

" select pasted section
nnoremap gp `[v`]
nmap ( [m
nmap ) ]m
nnoremap s :exec "normal i".nr2char(getchar())."\e"<CR>
nnoremap S :exec "normal a".nr2char(getchar())."\e"<CR>


set laststatus=2
set showtabline=2
set noshowmode
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

inoremap jj <ESC>:w<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0
set wildignore+=*.o,*.hi,*.pyc
nnoremap <leader>p :CtrlPMixed<CR>
au FocusLost * :wa

" Settings for jedi-vim
" " cd ~/.vim/bundle
" " git clone git://github.com/davidhalter/jedi-vim.git
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport pdb; pdb.set_trace() # BREAKPOINT<C-c>

let g:slime_target = "tmux"

