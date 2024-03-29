source ~/.vim/plugins.vim
source ~/.vim/abbrs.vim

syntax on

colorscheme onedark

" lets:
let mapleader = "\<Space>"
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

let s:os = trim(system('uname -s'))
let s:is_linux = s:os == 'Linux'

let NERDTreeShowLineNumbers = 1
let NERDTreeShowHidden = 1
let g:coc_global_extensions = [
\ 'coc-rust-analyzer',
\ 'coc-tsserver',
\ 'coc-css',
\ 'coc-json',
\ 'coc-html',
\ 'coc-prettier',
\ 'coc-python'
\]

let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1
let g:obvious_resize_default = 2
let g:UltiSnipsExpandTrigger='<c-k>'

let g:ale_fix_on_save = 0
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}

let g:VimTodoListsDatesEnabled = 1
let g:VimTodoListsDatesFormat = '%d-%m-%Y'

let g:airline_theme = 'dracula'

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.tsx"

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
set gdefault
set noerrorbells

if s:is_linux
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

" Make it obvious where 80 characters is
set colorcolumn=81
set laststatus=2
set numberwidth=5
set encoding=UTF-8
set t_Co=256
set scrolloff=3
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set foldmethod=indent
set foldlevelstart=20

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

vnoremap < <gv
vnoremap > >gv

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

nnoremap H 0^
nnoremap L $
nnoremap <Leader>q :q<CR>
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>
nnoremap <Leader>u :%!python -m json.tool<CR>
nnoremap <silent> <leader>h :nohlsearch<CR>
nnoremap <Leader>r :RustRun<CR>
nnoremap <Leader>f :RustFmt<CR>
nnoremap <Leader>n :w !node<CR>
nnoremap <Leader>t :w !ts-node %<CR>
nnoremap <Leader>s :w !csc % && chmod +x %:r.exe && ./%:r.exe<CR>

autocmd FileType latex,tex,md,markdown,text setlocal spell

" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

" Coc Prettier:

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" End Coc Prettier

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
nmap <leader>rr <Plug>(coc-rename)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" End CoC suggestions

" Python black

" augroup black_on_save
"   autocmd!
"   autocmd BufWritePre *.py Black
" augroup end

" End Python black

" NERDTree suggestions:
map <Leader>nt :NERDTreeToggle<CR>
map <Leader>nf :NERDTreeFind<CR>

autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fzf suggestions:
command! FzfListFiles execute (len(fugitive#head())) ? 'GFiles' : 'Files'

nnoremap ; :Files<CR>
nnoremap <Leader>; :Ag<CR>
" End Fzf suggestions

" ObviousResize suggestions:
nnoremap <silent> <Left>  :<C-U>ObviousResizeLeft<CR>
nnoremap <silent> <Down>  :<C-U>ObviousResizeDown<CR>
nnoremap <silent> <Up>    :<C-U>ObviousResizeUp<CR>
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
nnoremap <Leader>gb :Git blame<cr>
nnoremap <Leader>gci :Gcommit<cr>
nnoremap <Leader>gch :Git checkout -- %<cr>
nnoremap <Leader>ge :Gedit<cr>
nnoremap <Leader>gm :Gmove
nnoremap <Leader>gr :Gread<cr>
nnoremap <Leader>grm :Gremove<cr>
nnoremap <Leader>gp :Git push
nnoremap <Leader>gl :0Glog<cr>
" End Fugitive suggestions

" Vimspector remaps
fun! GotoWindow(id)
    call win_gotoid(a:id)
    MaximizerToggle
endfun

nnoremap <Leader>m :MaximizerToggle!<CR>
nnoremap <Leader>dd :call vimspector#Launch()<CR>
nnoremap <Leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <Leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
nnoremap <Leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <Leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <Leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <Leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
nnoremap <Leader>de :call vimspector#Reset()<CR>

nnoremap <Leader>dtcb :call vimspector#CleanLineBreakpoint()<CR>

nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStepOver
nmap <Leader>dk <Plug>VimspectorStepOut
nmap <Leader>d_ <Plug>VimspectorRestart
nnoremap <Leader>d<space> :call vimspector#Continue()<CR>

nmap <Leader>drc <Plug>VimspectorRunToCursor
nmap <Leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <Leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint
" End Vimspector remaps

highlight Normal ctermbg=none
highlight CursorLineNr ctermfg=lightblue cterm=bold
highlight LineNr ctermfg=none
