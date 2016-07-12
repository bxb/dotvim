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

highlight OverLength ctermbg=darkcyan ctermfg=white guibg=#592929
match OverLength /\%120v.\+/

set relativenumber
set number

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
set lazyredraw

map <leader><space> :noh<CR>
map <leader>, :bprev<CR>
nnoremap .. :bnext<CR>
nnoremap <leader>- <C-w>s<C-w>j
nnoremap <leader>\| <C-w>v<C-w>l
nnoremap <leader>w <C-w>q
nnoremap <leader>x :bp \| bd # <CR>
nnoremap <leader>q :bd <CR>
nnoremap <leader>n :e ~/notes.txt<CR>
nnoremap <leader>rv :so $MYVIMRC<CR>
nnoremap <leader>ev :e $MYVIMRC<CR>
" surround this character with spaces
nnoremap <leader>s i<space><ESC>la<space><ESC>
" ,h to find and replace the word under the cursor
nnoremap <leader>h *Ncw
" run one line and send to ipython
nmap <C-R> V<C-C><C-C><ESC>j
imap <C-R> <ESC>V<C-C><C-C><ESC>
" cancel an insert
inoremap <C-G> <esc>u
" remap common typo :W to :w
cmap W w

" remove whitespace
fun! TrimWhitespace()
    let l:save_cursor = getpos('.')
    %s/\s\+$//e
    call setpos('.', l:save_cursor)
endfun

nnoremap <leader>t :call TrimWhitespace()<CR>

" select pasted section
nnoremap gp `[v`]
nnoremap j gj
nnoremap k gk
nmap ( [m
nmap ) ]m
nnoremap S :exec "normal i".nr2char(getchar())."\e"<CR>
nnoremap s :exec "normal a".nr2char(getchar())."\e"<CR>
inoremap jj <ESC>:w<CR>
nmap <C-Y> :redo 

set laststatus=2
set showtabline=2
set noshowmode
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'r'
set wildignore+=*.o,*.hi,*.pyc,*.asv,*.pkl
nnoremap <leader>p :CtrlPMixed<CR>
au FocusLost * :wa

" Settings for jedi-vim
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures=0
autocmd FileType python setlocal completeopt-=preview
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Slime REPL
let g:slime_target = "tmux"
let g:slime_python_ipython = 1
nmap <C-R> V<C-C><C-C>j

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_pylint_post_args = '--msg-template="{path}:{line}:{column}:{C}: [{symbol} {msg_id}] {msg}"'
let g:syntastic_mode_map = {
    \ "mode": "passive"}
nmap <leader>c :SyntasticCheck<CR>
nmap <leader>v :SyntasticToggleMode<CR>:SyntasticToggleMode<CR>
nmap [l :lprevious <CR>
nmap ]l :lnext <CR>

" code folding
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
nnoremap <space> za
set foldlevelstart=2
"custom python code folding
fu! CustomFoldText()
    "get first non-blank line
    let fs = v:foldstart
    while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
    endwhile
    if fs > v:foldend
        let line = getline(v:foldstart)
    else
        let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
    endif

    let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
    let foldSize = 1 + v:foldend - v:foldstart
    let foldSizeStr = " " . foldSize . " lines "
    let foldLevelStr = repeat("+--", v:foldlevel)
    let lineCount = line("$")
    let foldPercentage = printf("[%.1f", (foldSize*1.0)/lineCount*100) . "%] "
    let expansionString = repeat(".", w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
    return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endf

set foldtext=CustomFoldText()


" my grep
command!-nargs=1 Find execute 'silent grep! -Irn --exclude-dir=.git --exclude *.{pyc} -e <args> .' | cwindow | execute 'redraw!'
:nmap <leader>i :Find <c-r>=expand("<cword>")<cr><cr>

let g:AutoPairsMapCh = 0

imap <C-H> <ESC><C-H>
imap <C-J> <ESC><C-J>
imap <C-K> <ESC><C-K>
imap <C-L> <ESC><C-L>

imap <tab> <plug>SuperTabForward
let g:SuperTabMappingForward = '<tab>'
let g:SuperTabLongestHighlight = 1
