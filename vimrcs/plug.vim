" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
let s:vim_runtime = expand('<sfile>:p:h')."/.."
call plug#begin(s:vim_runtime.'/my_plugins')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

Plug 'dracula/vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'preservim/vim-indent-guides'
Plug 'tpope/vim-rhubarb'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-abolish'
Plug 'farmergreg/vim-lastplace'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'mileszs/ack.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/mayansmoke'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  }
Plug 'chr4/nginx.vim'
Plug 'amix/open_file_under_cursor.vim'
Plug 'vim-scripts/tlib'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'sophacles/vim-bundle-mako'
Plug 'kchmck/vim-coffee-script'
Plug 'altercation/vim-colors-solarized'
Plug 'michaeljsmith/vim-indent-object'
Plug 'groenewege/vim-less'
Plug 'therubymug/vim-pyte'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'nvie/vim-flake8'
Plug 'digitaltoad/vim-pug'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'tpope/tpope-vim-abolish'
Plug 'rust-lang/rust.vim'
Plug 'plasticboy/vim-markdown'
Plug 'mattn/vim-gist'
Plug 'vim-ruby/vim-ruby'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'vim-scripts/mru.vim'
Plug 'aperezdc/vim-template'
" Add icons to your Plugins
Plug 'ryanoasis/vim-devicons'
" This plugin adds Go language support 
Plug 'fatih/vim-go'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
Plug 'junegunn/fzf'
" Initialize plugin system
call plug#end()
