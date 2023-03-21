" cosmetics
colorscheme desert

" indentions
set expandtab tabstop=2 shiftwidth=2 smartindent
set nu
ino jk <esc>

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
set grepprg=grep\ -nH\ $*

" Share clipboard with MacOS
set clipboard=unnamed

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" turns off vi compatibility mode
set nocompatible

" when scrolling up down, show at least 5 lines
set scrolljump=5

" This shows what you are typing as a command.
set showcmd

" insert newline without entering insert mode
nnoremap <C-J> o<Esc>
nnoremap <C-K> O<Esc>

" handle trailing whitespace
match ErrorMsg '\s\+$'

" Removes trailing spaces
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction
nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>

autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()

" insert a single char without entering insert mode
:nnoremap <Space>i i_<Esc>r
