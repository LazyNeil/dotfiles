"" Help
"   remember to exec :PlugInstall and close it with q
"
"   If you want to delete a plugin:
"       * Remove the line from your config,
"       * Quit and restart Vim, and then
"       * Run :PlugClean. You will be prompted to delete the directory, type Y.
"
"   you may need to install ctags | example on arch > paru -S universal-ctags

"" Execute on start
" set transparent background
"autocmd vimenter * highlight Normal ctermbg=NONE

"" Options
" ... general settings
set signcolumn=yes
" show the numbers on the left
set number
" show relative numbers from the cursor line
:set relativenumber
" auto indent code
:set autoindent
" set tab width to 4 columns.
set tabstop=4
" set shift width to 4 spaces.
set shiftwidth=4
" use space characters instead of tabs.
set expandtab
" see multiple spaces as tabstops so <BS>
:set softtabstop=4
" enable mouse (a for all the features)
:set mouse=a
" set the commands to save in history default number is 20.
set history=1000
" ignore capital letters during search.
set ignorecase
" override the ignorecase option if searching for capital letters.
" this will allow you to search specifically for capital letters.
set smartcase
" show partial command you type in the last line of the screen.
set showcmd
" hide the mode (insert, normal, view).
set noshowmode
" show matching words during a search.
set showmatch
" use highlighting when doing a search.
set hlsearch

"" Plugin'sPlug 'nvim-lua/plenary.nvim'
" plugin's directory
call plug#begin('~/.local/share/nvim/plugged')
	Plug 'https://github.com/preservim/nerdtree' " NerdTree
	Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
	Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
	Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
    Plug 'https://github.com/nvim-lua/plenary.nvim' " Git deco LUA dependency
    Plug 'https://github.com/lewis6991/gitsigns.nvim' " Git decorations
    Plug 'http://github.com/tpope/vim-surround' " Surrounding like () & <p>
    Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
    Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
    Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
    Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
    Plug 'https://github.com/vim-airline/vim-airline' " Status bar
    " stop reading plugins
call plug#end()

" Init lua plugins
lua require("init")

"" Config & Mapping
"" TODO: add more mapping keys

" move lines in any mode
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" open tagbar
nmap <F8> :TagbarToggle<CR>
" open nerdtree
nnoremap <C-e> :NERDTreeToggle<CR>

" comment hotkeys

" surrounding hotkeys

" set colorscheme after load
colorscheme purify

" clean the hi color of the side
highlight clear signcolumn
