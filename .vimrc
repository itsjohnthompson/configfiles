filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'psf/black'

Plugin 'ycm-core/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end() " required
filetype plugin indent on " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList - lists configured plugins
" :PluginInstall - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set ruler
" set tags=$DEVICE_APP_ROOT/tags
filetype plugin indent on
syntax on
set expandtab!
set ts=4
set sw=4
set sts=4
"set term=screen-256color
set term=xterm-256color
set background=dark
set backspace=2
" Old from pre-zsh and iterm set background=dark
highlight ExtraWhiteSpace ctermbg=red guibg=red
autocmd VimEnter,WinEnter *.c,*.cpp,*.h,*.hpp match ExtraWhiteSpace /\s\+$/
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
autocmd VimEnter,WinEnter *.c,*.cpp,*.h,*.pp 2match OverLength /\%81v. \+/
function! Formatonsave()
    let l:formatdiff = 1
    py3f /usr/share/clang/clang-format.py
endfunction
autocmd BufWritePre *.h,,*.c,*.cc,*.cpp call Formatonsave()


"let g:statusline_cscope_flag = ""
"set statusline=[%n]%<%f\ %h%m%r\ %=\
"set statusline+=%(\ [%{g:statusline_cscope_flag}]\ \ \ %)
"set statusline+=%-14.(%l,%c%V%)\ %P
"function! Cscope_dynamic_update_hook(updating)
" if a:updating
" let g:statusline_cscope_flag = "C"
" else
" let g:statusline_cscope_flag = ""
" endif
" execute "redrawstatus!"
"endfunction
"call Cscope_dynamic_update_hook(0)
"
"map <F5> :!cscope -Rbq<CR>:cs reset<CR>:!ctags .<CR><CR>

" autocmd BufWritePre *.py execute ':Black'
" nnoremap <F9> :Black<CR>
" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")
let g:ycm_enable_diagnostic_signs = 0
let g:syntastic_enable_highlighting = 0
nnoremap <leader>gt :YcmCompleter GoTo<CR>

nnoremap <leader>fi :YcmCompleter FixIt<CR>

"nnoremap <leader>gd :YcmCompleter GetDoc<CR>

"nnoremap <leader>gtp :YcmCompleter GetType<CR>

nnoremap <leader>gp :YcmCompleter GetParent<CR>

"nnoremap <leader>gti :YcmCompleter GoToInclude<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>

"nnoremap <leader>gdf :YcmCompleter GoToDefinition<CR>

nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>

nnoremap <leader>yd :YcmDiags<CR>

" Turn off highlighting on search
set nohlsearch

