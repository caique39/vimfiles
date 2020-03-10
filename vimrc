syntax on

" lets:

let mapleader = " "

let NERDTreeShowHidden = 1
let g:user_emmet_leader_key = ","

let g:better_whitespace_enabled = 1

let g:ale_fix_on_save = 0
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

let g:obvious_resize_default = 2

" end lets

" sets:

set autoread
set showcmd
set showmode
set lazyredraw
set incsearch
set hlsearch
set ruler
set ignorecase
set noswapfile
set smartcase
set t_Co=256
set number
set relativenumber
set encoding=UTF-8
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

" Tabs
set expandtab
set autoindent
set smarttab
set shiftwidth=4
set tabstop=4
set smartindent

"CoC suggestions:
set nohidden
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c
set cmdheight=2
set signcolumn=yes

" end sets

call plug#begin('~/.vim/plugged')

" Plugins:

" Editing
Plug 'editorconfig/editorconfig-vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
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
Plug 'w0rp/ale'

" Reports
Plug 'wakatime/vim-wakatime'

call plug#end()

colorscheme onedark

nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>
nnoremap <Leader>u :%!python -m json.tool<CR>
nmap <silent> <leader>h :nohlsearch<CR>

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
" End CoC

" NERDTree suggestions:
map <Leader>n :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | wincmd w
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" End NERDTree suggestions

" Fzf suggestions:
nmap ; :Files<CR>
" End Fzf suggestions

" ObviousResize suggestions:
nnoremap <silent> <C-left> :<C-U>ObviousResizeLeft<CR>
nnoremap <silent> <C-down> :<C-U>ObviousResizeDown<CR>
nnoremap <silent> <C-up> :<C-U>ObviousResizeUp<CR>
nnoremap <silent> <C-right> :<C-U>ObviousResizeRight<CR>
" End ObviousResize suggestions

" EasyMotion suggestions
map <Leader>w <Plug>(easymotion-bd-w)
" end EasyMotion suggestions

highlight Normal ctermbg=none
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
