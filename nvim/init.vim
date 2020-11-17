set encoding=utf-8
set hidden
set ignorecase
set showcmd
set relativenumber
set mouse=a
let mapleader = ","

autocmd Filetype css setlocal tabstop=4
set tabstop=4
set shiftwidth=4
set expandtab

imap jk <ESC>
imap <c-x> <ESC>:w<CR>
nmap <c-x> <ESC>:w<CR>
nmap <leader><space> :noh<CR>
nmap gn :bn<CR>
nmap gp :bp<CR>
nmap gd :bd<CR>

nmap <leader><leader>s :source $MYVIMRC<CR>
nmap <leader><leader>ev :e $MYVIMRC<CR>

" ==================================================

call plug#begin()
" deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
" deoplete

Plug 'editorconfig/editorconfig-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'peitalin/vim-jsx-typescript'
Plug 'SirVer/ultisnips'

" Themes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" ==================================================

" Depends on Dracula
colorscheme dracula
" Depends on Dracula

" Depends on FZF
let $FZF_DEFAULT_COMMAND = "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
nmap <leader>e :Files<CR>
nmap <leader>b :Buffers!<CR>
nmap <leader>m :Marks<CR>
nmap <C-F> :Ag 
" Depends on FZF

" Depends on Git
set diffopt+=vertical
nmap <leader>ga :Git add %<CR>
nmap <leader>gd :Gdiffsplit %<CR>
nmap <leader>gb :Git blame<CR>
" Depends on Git

" Depends on Vim Airline
" Set theme
let g:airline_theme='bubblegum'

" Set top buffer bar
let g:airline#extensions#tabline#enabled = 1
" Depends on Vim Airline

" Depends on NERDTree
nmap <C-K><C-B> :NERDTreeToggle<CR>
" Depends on NERDTree

" Depends on UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"                                    
" Depends on UltiSnips

" Depends on Emment
let g:user_emmet_settings = {
\   'typescript': {
\     'extends': 'jsx'
\   }
\ }
" Depends on Emment
