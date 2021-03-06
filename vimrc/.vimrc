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

"Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" turns of vi compatibility mode
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

" autocmd FileType html,javascript autocmd FileWritePre    * :call TrimWhiteSpace()
" autocmd FileType html,javascript autocmd FileAppendPre   * :call TrimWhiteSpace()
" autocmd FileType html,javascript autocmd FilterWritePre  * :call TrimWhiteSpace()
" autocmd FileType html,javascript autocmd BufWritePre     * :call TrimWhiteSpace()

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Plug 'leafgarland/typescript-vim'

" Initialize plugin system
" call plug#end()
