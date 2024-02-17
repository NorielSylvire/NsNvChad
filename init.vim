"*******************************************************************************
" Basic Vim Configuration
"**************************************************************++***************

" Call NvChad's acual config
lua require('init')

" Load all my custom vim plugins
source ~/.config/nvim/vimscript/loader.vim

" Set my 42 user and mail for 42's StdHeader plugin
let g:user42 = 'fhongu'
let g:mail42 = 'fhongu@student.42madrid.com'

"*******************************************************************************
" General Setup
"**************************************************************++***************

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"" Session management
let g:session_directory = "~/.cache/neovim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"*******************************************************************************
" Abbreviations
"**************************************************************++***************

"" Uppercase abbreviations for when you accidentally make the first char upper
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev X x
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall qall
cnoreabbrev Xall xall
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev Qa qa
cnoreabbrev qA qa
cnoreabbrev QA qa
cnoreabbrev Wa wa
cnoreabbrev wA wa
cnoreabbrev WA wa
cnoreabbrev Xa xa
cnoreabbrev xA xa
cnoreabbrev XA xa

"" Custom abbrevs
cnoreabbrev - xa
cnoreabbrev _ xa
