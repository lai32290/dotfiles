" set fileencodings=utf-8
set hidden
set ignorecase
set showcmd
set relativenumber
set mouse=a
set includeexpr=substitute(v:fname,'\\~/','./src/','')
" let mapleader = ","

autocmd Filetype css setlocal tabstop=4
autocmd Filetype dart setlocal shiftwidth=2
set tabstop=4
set shiftwidth=4
set expandtab
"set autochdir

"imap jk <ESC>
"imap <c-x> <ESC>:w<CR>
"nmap <c-x> <ESC>:w<CR>
"nmap <leader><space> :noh<CR>
"nmap gn :bn<CR>
"nmap gp :bp<CR>
"nmap gd :bd<CR>

"nmap <leader><leader>s :source $MYVIMRC<CR>
"nmap <leader><leader>ev :e $MYVIMRC<CR>

" ==================================================

call plug#begin()
" coc
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" let g:coc_global_extensions = [
" \    'coc-json',
" \    'coc-git',
" \    'coc-tsserver',
" \    'coc-css',
" \    'coc-ultisnips',
" \    'coc-html',
" \    'coc-python',
" \    'coc-svg',
" \    'coc-xml',
" \    'coc-yaml',
" \    'coc-vimlsp',
" \    'coc-flutter',
" \    'coc-go',
" \    'coc-lua'
" \]

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Add `:Format` command to format current buffer
" command! -nargs=0 Format :call CocAction('format')
" coc

Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" ==================================================

highlight LineNr ctermfg=grey
" Depends on FZF
" let $FZF_DEFAULT_COMMAND = "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
" nmap <leader>e :Files<CR>
" nmap <leader>b :Buffers<CR>
" nmap <leader>m :Marks<CR>
" nmap <C-F> :Ag 
" Depends on FZF

" Depends on Git
set diffopt+=vertical
" nmap <leader>ga :Git add %<CR>
" nmap <leader>gd :Gdiffsplit %<CR>
" nmap <leader>gb :Git blame<CR>
" Depends on Git

" Depends on Vim Airline
" Set theme
let g:airline_theme='bubblegum'

" Set top buffer bar
let g:airline#extensions#tabline#enabled = 1
" Depends on Vim Airline

" Depends on NERDTree
" nmap <C-K><C-B> :NERDTreeToggle<CR>
" Depends on NERDTree

" Depends on UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" Depends on UltiSnips

" Depends on Emment
let g:user_emmet_settings = {
\   'typescript': {
\     'extends': 'jsx'
\   }
\ }
" Depends on Emment

" Depends on thosakwe/vim-flutter
nnoremap <leader>fh :FlutterHotReload<cr>
nnoremap <leader>fr :FlutterHotRestart<cr>
" Depends on thosakwe/vim-flutter

" Depends on vim-jsx-typescript
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
" Depends on vim-jsx-typescript

" Depends on coc
" inoremap <silent><expr> <c-l> coc#refresh()
" Depends on coc

" Depends on prettier/vim-prettier
" nmap <Leader>py <Plug>(Prettier)
" Depends on prettier/vim-prettier

" Copy file path
"nmap <Leader>cp :let @+ = expand("%")<cr>

lua << EOF
    require('init')
EOF

let $SOURCE = "~/.config/nvim/init.vim"

