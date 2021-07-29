" ===============================================
"    'iamcco/markdown-preview.nvim' - config
" ===============================================

"" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

" ===============================================
    " 'iamcco/markdown-preview.nvim' - config
" ===============================================

" "*** configurações
set nowrap                                  " sem quebra de linha (default com quebra)
syntax on                                   " ativar sintaxe colorida
set cmdheight=1                             " apenas uma linha p/ digitar comandos
set autoindent                              " ativar indentação automática
set spell
set smartindent                             " tentará adivinhar a melhor indentação p/ o código quando efetuar quebra de linha. Funciona bem para linguagem C
set history=5000                            " default - últimos 50 comandos que você digitou em seu histórico. Armazenando os últimos 5000
set cul                                     " destaca a linha em que o cursor está posicionado (set cursorline)
set clipboard=unnamedplus                   " ativa transferência entre o Vim e a interface gráfica
set tabstop=4 softtabstop=4 expandtab       " converte o tab em espaços em branco  - ex.: set tabstop=2 softtabstop=2 expandtab shiftwidth=2
set hidden                                  " fica em buffer - ao abrir um novo arq.
set number                                  " ativar numeração de linha
set relativenumber                          " exibe linhas relativas a posição inicial
set inccommand=split                        " preview em tempo real ao digitar :%s/texto01/tex02 p/ alterar conteúdo
set ignorecase                              " ignora maiúsculas e minúsculas nas buscas
set scs                                     " ao fazer uma busca com maiúsculos considerar case sensitive se a primeira letra maiscula
set noshowmode                              " quando minimizado exibe apenas a primeira letra do modo (normal,insert, visual)

set guifont=Hack\ Regular\ Nerd\ Font\ Complete\ 12

" nerdtree
let NERDTreeShowHidden = 1
let NERDTreeIgnore = [
  \'\.DS_Store$',
  \'\.bundle$',
  \'\.capistrano$',
  \'\.git$',
  \'\.gitkeep$',
  \'\.keep$',
  \'\.localized$',
  \'\.routes$',
  \'\.sass-cache$',
  \'\.swo$',
  \'\.swp$',
  \'\.zip$', '\.pdf$','\.png$','\.mkv$','\.jpg$',
  \'tags$'
\]

let g:webdevicons_enable = 1               " loading the plugin

" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1

"*** desabilitados
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>
noremap <Up>    <Nop>
noremap <c-w>q  <Nop>

" noremap <c-w>h  <Nop>
" noremap <c-w>j  <Nop>
" noremap <c-w>k  <Nop>
" noremap <c-w>l  <Nop>

"** airline
set laststatus=2
let g:airline_theme='serene'
let g:airline#extensions#tabline#enabled = 1
let g:airline_statusline_ontop=0
let g:airline#extensions#tabline#formatter = 'unique_tail'
