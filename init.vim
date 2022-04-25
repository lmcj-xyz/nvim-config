call plug#begin()
"Plug 'vimwiki/vimwiki'
"Plug 'lervag/wiki.vim'
"Plug 'fcpg/vim-waikiki'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
call plug#end()

"Cursor line and column
set cursorline
set cursorcolumn

" Encoding
set encoding=utf-8

" leader keys
let mapleader='<space>'

" Numbers at the left with relative numbering
set number relativenumber
" Spelling
""" When setting up in a new system remember to run :set spell to  
""" download spell files
set spelllang=es_mx,en_gb
" Cursor away from the borders of the file
set scrolloff=10

" Filetype
filetype on
filetype indent on
filetype plugin on
set nocompatible
syntax on
syntax enable

" UltiSnips
""" This are default values
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsListSnippets = '<c-tab>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-m>'

"""UltiSnips directory
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']

"""Use <leader>u in normal mode to refresh UltiSnips snippets
nnoremap <leader>u <Cmd>call UltiSnips#RefreshSnippets()<CR>

""""""""""""WIKI Plugins
" Vimwiki config
let g:vimwiki_list=[{'path': '~/Repositorios/wiki/', 'path_html': '~/Repositorios/wiki/HTML/', 'template_path': '~/Repositorios/wiki/Templates/', 'template_default': 'Template', 'template_ext': '.html', 'syntax': 'markdown', 'ext': '.md'}]

" wiki.vim config
let g:wiki_root='~/Repositorios/wiki'
let g:wiki_filetypes = ['md']
let g:wiki_link_extension='.md'
let g:wiki_link_target_type='md'
let g:wiki_export = {
			\ 'args' : '',
			\ 'from_format' : 'markdown',
			\ 'ext' : 'html',
			\ 'link_ext_replace': v:false,
			\ 'view' : v:false,
			\ 'output': fnamemodify(tempname(), ':h'),
			\}

" waikiki config
let g:waikiki_roots=['~/Repositorios/wiki/']
let g:waikiki_default_maps=1
