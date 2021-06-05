let extension = expand('%:e')

call plug#begin()
if( extension == "cpp" || extension == "cc" || extension == "h" || extension == "hpp" )
Plug 'ycm-core/YouCompleteMe'
else
Plug 'zxqfl/tabnine-vim'
endif
Plug 'dracula/vim', { 'as': 'dracula' } 
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'matsuuu/pinkmare'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
call plug#end()

colorscheme dracula

command! -bang -bar -nargs=* Gpush execute 'Dispatch<bang> -dir=' .
      \ fnameescape(FugitiveGitDir()) 'git push' <q-args>
command! -bang -bar -nargs=* Gfetch execute 'Dispatch<bang> -dir=' .
      \ fnameescape(FugitiveGitDir()) 'git fetch' <q-args>
set updatetime=100


set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
set title
set cursorline
set encoding=utf-8
set guifont = 

" SAIR E SALVAR
map q :quit<cr>
map <C-s> :write<cr>
map <F2> <esc>:Vex<cr>

" COPIAR 
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP

let mapleader="\<space>"
" INSERIR : NO FINAL DE UM LINHA
nnoremap <leader>; A;<esc>
" ABRIR AS CONFIGURAÇÔES DO VIM
nnoremap <leader>ev :split ~/.config/nvim/init.vim<cr>
" CAREEGAR AS MODIFICAÇÔES DESSE ARQUIVO NA MEMORIA
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
" ESCREVER SNIPETS DINAMICAMENTE
nnoremap <leader>pt :UltiSnipsEdit<cr>


" VARIAVEI UTILIZADAS PARA OS SNIPETS
let g:UltiSnipsEditSplit = 'horizontal'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

" YOUCOMPLETEME
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/.ycm_extra_conf.py'
set completeopt-=preview
let g:ycm_show_diagnostics_ui = 0

let g:ycm_language_server =
  \ [{
  \   'name': 'ccls',
  \   'cmdline': [ 'ccls' ],
  \   'filetypes': [ 'c', 'cpp', 'cc', 'h', 'hpp' ],
  \   'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
  \ }]

" ULTILSNIPS
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" AIRLINE
let g:airline_theme = 'dracula'
" unicode symbols
let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' :'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
"let g:airline_symbols_ascii = 1

