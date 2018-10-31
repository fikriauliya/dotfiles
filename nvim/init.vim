source ~/.config/nvim/basic.vim

"
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

Plug 'tpope/vim-sensible'
Plug 'chrisbra/NrrwRgn'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'rbgrouleff/bclose.vim'
Plug 'tomasr/molokai'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-fireplace'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'embear/vim-foldsearch'
Plug 'kshenoy/vim-signature'
Plug 'schickling/vim-bufonly'
Plug 'benmills/vimux'
Plug 'tpope/vim-commentary'
Plug 'dart-lang/dart-vim-plugin'
Plug 'juanchanco/vim-jbuilder'

call plug#end()

set tabstop=2 shiftwidth=2 expandtab
set nowrap
set colorcolumn=120
set textwidth=120
set hidden
set number
set hlsearch
set cmdheight=1

let g:deoplete#enable_at_startup = 1

"map <C-J> :bnext<CR>
"map <C-K> :bprev<CR>
"map <C-H> :tabp<CR>
"map <C-L> :tabn<CR>
map <leader>. :Bclose<cr>
map <leader>q :q<cr>
map <leader>/ :tabclose<cr>
map <leader><cr> :Eval<cr>
map <leader>j :bnext<cr>
map <leader>k :bprev<cr>

"Yankstack
nmap <c-p> <Plug>yankstack_substitute_older_paste
nmap <c-n> <Plug>yankstack_substitute_newer_paste

"Tagbar
map <leader>tt :TagbarToggle<cr>

"fzf
map <leader>m :Marks<cr>
map <leader>g :Goyo<cr>
nnoremap <C-b> :Buffers<cr>
nnoremap <C-f> :GFiles<cr>
nnoremap <C-f>f :Files<cr>

"vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:tmuxline_preset = 'nightly_fox'

"Linelight
map <leader>l :Limelight<cr>
map <leader>ll :Limelight!<cr>

"NERDTree
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

colorscheme molokai

"EasyMotion
nmap <c-s> <Plug>(easymotion-s2)
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

"Persistent Undo
try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry

"Rainbow
au VimEnter * RainbowParentheses

"Ag
nnoremap \ :Ag<SPACE>

"Vimux
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vv :VimuxRunLastCommand<CR>
map <Leader>vs :VimuxInterruptRunner<CR>
map <Leader>vz :VimuxZoomRunner<CR>
