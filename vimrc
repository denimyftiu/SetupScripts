syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set smartcase
set noswapfile
set incsearch
" highlight ColorColumn ctermbg=0 guibg=lightgrey

set updatetime=50

call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'gruvbox-community/gruvbox'
Plug 'chriskempson/base16-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'leafgarland/typescript-vim'

call plug#end()

" colorscheme gruvbox
" let g:gruvbox_contrast_dark = 'hard'
" colorscheme base16-gruvbox-dark-pale
colorscheme base16-brewer
set termguicolors

" =================== Typescript =======================
let g:typescript_indent_disable = 1
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
" =================== Typescript =======================

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let mapleader = " "
let g:ctrlp_use_caching = 0

let g:ycm_autoclose_preview_window_after_completion = 1
" python stuff dont touch
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = ['g:ycm_python_interpreter_path', 'g:ycm_python_sys_path']
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'
" python stuff dont touch

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <Leader>+ :vertical resize +10<CR>
nnoremap <silent> <Leader>- :vertical resize -10<CR>

nnoremap <leader>gd :YcmCompleter GoTo <CR>
nnoremap <leader>gr :YcmCompleter GoToReferences <CR>
