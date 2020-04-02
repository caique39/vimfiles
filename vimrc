source ~/.vim/plugins.vim

syntax on

colorscheme onedark

" lets:

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let NERDTreeShowLineNumbers = 1
let mapleader = " "
let NERDTreeShowHidden = 1
let g:ale_fix_on_save = 0
let g:user_emmet_leader_key = ","
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1
let g:obvious_resize_default = 2
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
set smartcase
set ignorecase
set noswapfile
set number
set list
set relativenumber
set wildmenu
set wildmode=list:longest,full
set wildignorecase
set splitright
set splitbelow
set clipboard=unnamed

" Make it obvious where 80 characters is
set colorcolumn=81
set laststatus=2
set numberwidth=5
set encoding=UTF-8
set t_Co=256
set scrolloff=3
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set foldmethod=indent
set foldlevelstart=10

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
set updatetime=100
set shortmess+=c
set shortmess-=S
set cmdheight=2
set signcolumn=yes

" end sets


inoremap jk <Esc>

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

nnoremap 0 ^
nmap H 0
nnoremap L $
nnoremap <Leader>q :q<CR>
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>
nnoremap <Leader>f :Ag<CR>
nnoremap <Leader>u :%!python -m json.tool<CR>
nnoremap <silent> <leader>h :nohlsearch<CR>
nnoremap <Leader>n :w !node<CR>

vnoremap <Leader>s :sort<CR>

" Coc suggestions:
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
autocmd CursorHold * silent call CocActionAsync('highlight')

hi! link CocErrorSign WarningMsg
hi! link CocWarningSign Number
hi! link CocInfoSign Type

" GoTo code navigation.
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <leader>rn <Plug>(coc-rename)

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
nmap ; :Files<CR>
" End Fzf suggestions

" ObviousResize suggestions:
nnoremap <silent> <S-Left> :<C-U>ObviousResizeLeft<CR>
nnoremap <silent> <S-Down> :<C-U>ObviousResizeDown<CR>
nnoremap <silent> <S-Up> :<C-U>ObviousResizeUp<CR>
nnoremap <silent> <S-Right> :<C-U>ObviousResizeRight<CR>
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
nnoremap <Leader>gch :Git checkout -- %<cr>
nnoremap <Leader>ge :Gedit<cr>
nnoremap <Leader>gm :Gmove
nnoremap <Leader>gr :Gread<cr>
nnoremap <Leader>grm :Gremove<cr>
nnoremap <Leader>gp :Git push
nnoremap <Leader>gl :0Glog<cr>
" End Fugitive suggestions

highlight Normal ctermbg=none
highlight CursorLineNr ctermfg=lightblue cterm=bold
highlight LineNr ctermfg=none
