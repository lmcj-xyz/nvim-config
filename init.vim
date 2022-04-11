call plug#begin()
"Plug 'vimwiki/vimwiki'
Plug 'lervag/wiki.vim'
"Plug 'fcpg/vim-waikiki'
Plug 'lervag/vimtex'
Plug 'chrisbra/Colorizer'
call plug#end()

set nocompatible
filetype plugin on
syntax on
syntax enable

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
let maplocalleader='\<F7>'
let g:waikiki_default_maps=1

" Vimtex config
let g:vimtex_view_method='zathura'
let g:vimtex_complete_close_braces=1
let g:vimtex_quickfix_open_on_warning=0

"" Custom mappings
""" ctcb -> C_T \mathcal{C}^{-\beta}
call vimtex#imaps#add_map({
			\ 'lhs' : 'ctcb',
			\ 'rhs' : 'C_T \mathcal{C}^{-\beta}',
			\})
""" bnb -> C_T \mathcal{C}^{-\beta}
call vimtex#imaps#add_map({
			\ 'lhs' : 'bnb',
			\ 'rhs' : 'b^N \to b',
			\})

" Conceal
set conceallevel=0
let g:tex_conceal='abdgm'

" Numbers at the left with relative numbering
set number relativenumber
" Spelling
set spelllang=es_mx,en_gb
" Cursor away from the borders of the file
set scrolloff=10
" Indentation
filetype plugin indent on
