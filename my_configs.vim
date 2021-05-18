"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => autocomplete2.vim config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType java setlocal omnifunc=javacomplete#Complete

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-go config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => LanguageClient-neovim config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ 'go': ['gopls'],
    \ }

" Run gofmt on save
autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()


