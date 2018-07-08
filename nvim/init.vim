"--------------- Plugins ---------------
call plug#begin()

" -- Visual
Plug 'joshdick/onedark.vim'                                    
 " OneDark Colorscheme
"
"-- Javascript
Plug 'mxw/vim-jsx'                                             
 " Syntax highlighting for jsx
Plug 'pangloss/vim-javascript'                                 
 " Better syntax highlighting for JS

"-- Autocompletion
Plug 'SirVer/ultisnips'                                        
 " Snippet engine
" Plug 'honza/vim-snippets'                                    
   " Premade snippets
Plug 'ervandew/supertab'                                       
 " Use tab for everything
Plug 'jiangmiao/auto-pairs'                                    
 " Automatically close quotes, brackets etc
Plug 'mattn/emmet-vim'                                         
 " Emmet for vim
Plug 'w0rp/ale'                                                
 " Linting engine
Plug 'jceb/emmet.snippets'
"-- Filebrowsing
Plug 'scrooloose/nerdtree'                                     
 " Classic style file manager
Plug 'kien/ctrlp.vim'                                          
 " Fuzzy file finder
Plug 'Shougo/deoplete.nvim'
Plug 'leafgarland/typescript-vim'

call plug#end()


let g:ale_linters = {'javascript': ['eslint'], 'typescript': ['tslint']}                 
 " Use eslint for javascript linting

let g:deoplete#enable_at_startup = 1


"--------------- Visual ---------------
set relativenumber                                             
 " Activate relative linenumbers
syntax on                                                      
 " Activate syntax highlighting
colorscheme onedark                                            
 " Enable colorscheme
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab    
 " Set tab to 4 spaces and stuff

"--------------- Keybinds ---------------
let mapleader = ' '                                            
 " Set leader
nmap <Leader>[ :tabn<cr>                                       
 " Bind next tab
nmap <Leader>[ :tabp<cr>                                       
 " Bind prev tab
nmap <Leader>e :NERDTreeToggle<cr>                             
 " Bind NERDTree
nmap <Leader>p :CtrlP<cr>                                      
 " Bind CtrlP



"--------------- Autocommands ---------------
autocmd FileType xml set ft=typescript                                                               

autocmd FileType html,htmldjango,css,scss,sass,javascript,typescript imap <buffer> <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
