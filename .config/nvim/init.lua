local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug ('neoclide/coc.nvim', {branch = 'release'})
Plug 'tpope/vim-sensible'
Plug ('scrooloose/nerdtree', {on = 'NERDTreeToggle'})

Plug 'elixir-editors/vim-elixir'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dyng/ctrlsf.vim'
Plug 'mhinz/vim-mix-format'

Plug ('dracula/vim', { as = 'dracula' })

Plug 'wesQ3/vim-windowswap'

vim.call('plug#end')

vim.cmd 'colorscheme dracula'
vim.cmd 'source ~/.config/nvim/cocconfig.vim'

-- *sigh* why am i even using lua
vim.cmd 'let mapleader=";"'
vim.cmd 'let g:airline#extensions#tabline#enabled = 1'
vim.cmd 'let g:airline#extensions#tabline#buffer_nr_show = 1'
vim.cmd 'set wildmenu'
vim.cmd 'set wildmode=list:full'
vim.cmd 'let g:mix_format_on_save = 1'
vim.cmd 'let g:mix_format_silent_errors = 1'

vim.cmd 'map <leader>r :NERDTreeFind<cr>'
vim.cmd 'set nu'
vim.cmd 'map <leader>n :bn<cr>'
vim.cmd 'map <leader>p :b#<cr>'

vim.cmd 'map <leader>a :vertical resize +5<cr>'
vim.cmd 'map <leader>f :vertical resize -5<cr>'
vim.cmd 'map <leader>s :resize +5<cr>'
vim.cmd 'map <leader>d :resize -5<cr>'
vim.cmd 'map <leader>c :bp\\|bd #<cr>'
vim.cmd 'command! FormatJSON :%!jq'
vim.cmd 'command! CollapseJSON :%!jq -c'

vim.cmd 'filetype plugin indent on'
-- On pressing tab, insert 2 spaces set expandtab
-- show existing tab with 2 spaces width
vim.cmd 'set tabstop=2'
vim.cmd 'set softtabstop=2'
-- when indenting with '>', use 2 spaces width
vim.cmd 'set shiftwidth=2'

