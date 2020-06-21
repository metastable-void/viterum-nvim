if g:dein#_cache_version !=# 150 || g:dein#_init_runtimepath !=# '/home/viterum_24/.config/nvim/dein/repos/github.com/Shougo/dein.vim,/home/viterum_24/.config/nvim,/etc/xdg/nvim,/home/viterum_24/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/usr/share/nvim/runtime,/usr/lib/x86_64-linux-gnu/nvim,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/home/viterum_24/.local/share/nvim/site/after,/etc/xdg/nvim/after,/home/viterum_24/.config/nvim/after' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/viterum_24/.config/nvim/init.vim', '/home/viterum_24/.config/nvim/dein.toml', '/home/viterum_24/.config/nvim/lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/viterum_24/.config/nvim/dein'
let g:dein#_runtime_path = '/home/viterum_24/.config/nvim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/viterum_24/.config/nvim/dein/.cache/init.vim'
let &runtimepath = '/home/viterum_24/.config/nvim/dein/repos/github.com/Shougo/dein.vim,/home/viterum_24/.config/nvim,/etc/xdg/nvim,/home/viterum_24/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/home/viterum_24/.config/nvim/dein/repos/github.com/junegunn/fzf,/home/viterum_24/.config/nvim/dein/repos/github.com/neoclide/coc.nvim,/home/viterum_24/.config/nvim/dein/.cache/init.vim/.dein,/usr/share/nvim/runtime,/home/viterum_24/.config/nvim/dein/.cache/init.vim/.dein/after,/usr/lib/x86_64-linux-gnu/nvim,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/home/viterum_24/.local/share/nvim/site/after,/etc/xdg/nvim/after,/home/viterum_24/.config/nvim/after'
filetype off
source ~/.config/nvim/coc-conf.vim
    nnoremap <silent><C-e> :NERDTreeToggle<CR>
    let g:NERDTreeWinSize = 25
    let g:neoterm_default_mod='belowright'
    let g:neoterm_size=10
    let g:neoterm_autoscroll=1
    
let g:airline_powerline_fonts = 1
                                              
    colorscheme lucius                                      
    set background=dark                                     
    syntax enable
tnoremap <silent> <ESC> <C-\><C-n>
nnoremap <c-t><c-t> :Ttoggle<CR>
tnoremap <c-t><c-t> <ESC>:Ttoggle<CR>
nnoremap @p :T python %:t<CR>
nnoremap @h :T stack runghc %:t<CR>
nnoremap @l :T ptex2pdf -l -ot -kanji=utf8 %:t<CR> 
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
