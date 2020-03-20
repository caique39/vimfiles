syntax on

" lets:

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

let mapleader = " "
let NERDTreeShowHidden = 1

let g:user_emmet_leader_key = ","

let g:better_whitespace_enabled = 1

let g:obvious_resize_default = 2

let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 0
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}

" end lets

" sets:

set autoread
set showcmd
set showmode
set nowrap
set title
set lazyredraw
set incsearch
set hlsearch
set ruler
set ignorecase
set noswapfile
set smartcase
set number
set list
set relativenumber
set wildmenu
set wildmode=full
set wildignorecase
set autochdir

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

set statusline=%F
set laststatus=2
set numberwidth=5
set encoding=UTF-8
set t_Co=256
set scrolloff=3
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

" Tabs
set expandtab
set autoindent
set smartindent
set smarttab
set tabstop=2
set shiftwidth=2

"CoC suggestions:
set nohidden
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c
set shortmess-=S
set cmdheight=2
set signcolumn=yes

" end sets

call plug#begin('~/.vim/plugged')

" Plugins:

" Editing
Plug 'editorconfig/editorconfig-vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'ntpeters/vim-better-whitespace'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tomtom/tcomment_vim'
Plug 'talek/obvious-resize'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" Search
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Languages and frameworks
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'

" UI
Plug 'ryanoasis/vim-devicons'
Plug 'joshdick/onedark.vim'

" Lint
Plug 'dense-analysis/ale'

" Reports
Plug 'wakatime/vim-wakatime'

call plug#end()

colorscheme onedark

inoremap jk <Esc>

nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>
nnoremap <Leader>f :Ag<CR>
nnoremap <Leader>u :%!python -m json.tool<CR>
nnoremap <silent> <leader>h :nohlsearch<CR>

vnoremap <leader>s :sort<CR>

" Coc suggestions:
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

hi! link CocErrorSign WarningMsg
hi! link CocWarningSign Number
hi! link CocInfoSign Type

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" End CoC

" NERDTree suggestions:
map <Leader>nt :NERDTreeToggle<CR>
map <Leader>nf :NERDTreeFind<CR>

autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Navigate through windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" End NERDTree suggestions

" Fzf suggestions:
nmap ; :FZF<CR>
" End Fzf suggestions

" ObviousResize suggestions:
nnoremap <silent> <Left> :<C-U>ObviousResizeLeft<CR>
nnoremap <silent> <Down> :<C-U>ObviousResizeDown<CR>
nnoremap <silent> <Up> :<C-U>ObviousResizeUp<CR>
nnoremap <silent> <Right> :<C-U>ObviousResizeRight<CR>
" End ObviousResize suggestions

" EasyMotion suggestions:
map <Leader>w <Plug>(easymotion-bd-w)
" end EasyMotion suggestions

" EasyAlign suggestions:
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
" EasyAlign suggestions

" Fugitive suggestions:
nnoremap <Leader>gd :Gvdiff<cr>
nnoremap <Leader>gs :Gstatus<cr>
nnoremap <Leader>gw :Gwrite<cr>
nnoremap <Leader>ga :Git add<cr>
nnoremap <Leader>gb :Gblame<cr>
nnoremap <Leader>gci :Gcommit<cr>
nnoremap <Leader>ge :Gedit<cr>
nnoremap <Leader>gm :Gmove
nnoremap <Leader>gr :Gread<cr>
nnoremap <Leader>grm :Gremove<cr>
nnoremap <Leader>gp :Git push
nnoremap <Leader>gl :0Glog<cr>
" End Fugitive suggestions

highlight Normal ctermbg=none
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/
