" ------------------------------------------------------------
"  key bind
" ------------------------------------------------------------
" Normal Mode
noremap <C-t> :terminal<CR>
tnoremap <Esc> <C-\><C-n><CR>

" Insert Mode
inoremap <silent> jj <ESC>:<C-u>w<CR>:" InsertMode抜けて保存
" Insert mode movekey bind
inoremap <C-d> <BS>
inoremap <C-h> <Left>                                                                                                                 
inoremap <C-l> <Right>
inoremap <C-k> <Up>                          
inoremap <C-j> <Down>

" encode setting                                                                                                                                 
set encoding=utf-8
" edita setting
set termguicolors
set number                                                      " 行番号表示
set splitbelow                                                  " 水平分割時に下に表示
set splitright                                                  " 縦分割時を右に表示
set noequalalways                                               " 分割時に自動調整を無効化
set wildmenu                                                    " コマンドモードの補完
autocmd TermOpen * setlocal norelativenumber
autocmd TermOpen * setlocal nonumber
" cursorl setting
set ruler                                                       " カーソルの位置表示
set cursorline                                                  " カーソルハイライト
" tab setting
set expandtab                                                   " tabを複数のspaceに置き換え
set tabstop=2                                                   " tabは半角2文字
set shiftwidth=2                                                " tabの幅


if &compatible    
  set nocompatible               " Be iMproved    
endif    

" Pluginディレクトリのパス    
let s:dein_dir = expand('~/.config/nvim/dein')    
" dein.vimのパス    
let s:dein_repo_dir = s:dein_dir .  '/repos/github.com/Shougo/dein.vim'    
" tomlのディレクトリへのパス    
let s:toml_dir = expand('~/.config/nvim')    

" Required:    
execute 'set runtimepath^=' . s:dein_repo_dir    

" Required:    
if dein#load_state(s:dein_dir)    
  call dein#begin(s:dein_dir)    

  " 起動時に読み込むプラグイン群のtoml    
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})

  " 利用時に読み込むプラグインのtoml
  call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})

  " Required:               
  call dein#end()           
  call dein#save_state()    
endif                        

" Required:                  
filetype plugin indent on

" If you want to install not installed plugins on startup.    
if dein#check_install()                                       
  call dein#install()      
endif                          
                          
nnoremap <silent><C-e> :NERDTreeToggle<CR>

set clipboard+=unnamedplus
syntax enable

colorscheme lucius
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight LineNr ctermbg=NONE guibg=NONE
highlight Folded ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE
