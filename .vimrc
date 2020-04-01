filetype plugin indent on
syntax on
set expandtab!
set ts=4
set sw=4
set sts=4
set background=dark
highlight ExtraWhiteSpace ctermbg=red guibg=red
autocmd VimEnter,WinEnter *.c,*.cpp,*.h,*.hpp match ExtraWhiteSpace /\s\+$/
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
autocmd VimEnter,WinEnter *.c,*.cpp,*.h,*.pp 2match OverLength /\%81v. \+/

