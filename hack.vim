" ======================================================
" Configuração
" ======================================================
set nowrap                                  " sem quebra de linha (default com quebra)
syntax on                                   " ativar sintaxe colorida
set cmdheight=1                             " apenas uma linha p/ digitar comandos
set autoindent                              " ativar indentação automática
set spell
set spell spelllang=pt,en_us                " dicionário português Brasil e inglês USA
set smartindent                             " tentará adivinhar a melhor indentação p/ o código quando efetuar quebra de linha. Funciona bem para linguagem C
set history=5000                            " default - últimos 50 comandos digitados no histórico
set clipboard=unnamedplus                   " ativa transferência entre o Vim e a interface gráfica
set tabstop=4 softtabstop=4 expandtab       " converte o tab em espaços em branco  - ex.: set tabstop=2 softtabstop=2 expandtab shiftwidth=2
set hidden                                  " fica em buffer - ao abrir um novo arq.
set number                                  " ativar numeração de linha
set relativenumber                          " exibe linhas relativas a posição inicial
set inccommand=split                        " preview em tempo real ao digitar :%s/texto01/tex02 p/ alterar conteúdo
set ignorecase                              " ignora maiúsculas e minúsculas nas buscas
set scs                                     " smartcase - ao fazer uma busca com maiúsculos considerar case sensitive se a primeira letra maiscula
set noshowmode                              " quando minimizado exibe apenas a primeira letra do modo (normal,insert, visual)
set scrolloff=8
set nohlsearch                              " sem highlight na busca
set autoread                                " update vim after file update from outside
set splitbelow                              " create the vertical splits to the right
set splitright                              " create the vertical splits below

set cul                                     " destaca a linha em que o cursor está posicionado (set cursorline)
autocmd InsertEnter,InsertLeave * set cuc!  " ḣabilita/desabilita o destaque de coluna ao entrar/sair do insert mode"
au WinLeave * set nocursorline              " ao sair do buffer, desabilita destaque de linha
au WinEnter * set cursorline				" ao entrar no buffer, habilita destaque de linha

" ======================================================
" airline
" ======================================================
set laststatus=2
let g:airline_theme='serene'
let g:airline#extensions#tabline#enabled = 1
let g:airline_statusline_ontop=0
let g:airline#extensions#tabline#formatter = 'unique_tail'

" ======================================================
" fzf-checkout - Manage branches and tags with fzf
" ======================================================
let fzf_layout = { 'window': {'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

" ======================================================
" liuchengxu/vim-which-key - show command completion at bottom
" ======================================================
let g:which_key_disable_default_offset = 1
let g:which_key_use_floating_win = 1

autocmd FileType which_key setlocal nospell

let g:which_key_map = {
	\ '>' : [':call NextBufferTab()'              , 'tab-next']     ,
	\ '<' : [':call PrevBufferTab()'              , 'tab-previous'] ,
    \ "'" : [':call ChooseTerm("term-slider", 1)' , 'terminal']     ,
	\ "." : [':Explore'                           , 'netrw']        ,
	\ "C" : 'toggle-cheatsheet-comments'          ,
	\}

" ======================================================
" mapeamento do FloatermNew - terminal inside vim
" ======================================================
let g:which_key_map.t = {
	\ 'name' : '+terminal'                                       ,
	\ 'T'    : [':call ChooseTerm("term-slider", 1)'             , 'terminal'] ,
	\ 'f'    : [':FloatermNew fzf'                               , 'fzf']      ,
	\ 'g'    : [':FloatermNew lazygit'                           , 'git']      ,
	\ 'd'    : [':FloatermNew lazydocker'                        , 'docker']   ,
	\ 'n'    : [':FloatermNew node'                              , 'node']     ,
	\ 'p'    : [':FloatermNew python'                            , 'python']   ,
	\ 'm'    : [':FloatermNew lazynpm'                           , 'npm']      ,
	\ 't'    : [':FloatermToggle'                                , 'toggle']   ,
	\ 's'    : [':FloatermNew gotop'                             , 'gotop']    ,
	\ 'h'    : [':FloatermNew ncdu'                              , 'ncdu']     ,
	\ 'r'    : [':FloatermNew --width=0.99 --height=0.99 /bin/ranger', 'ranger'],
	\ }

" ======================================================
" nerdtree
" ======================================================
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

" ======================================================
" 'iamcco/markdown-preview.nvim' - config
" ======================================================
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

" ======================================================
" options for markdown render
" ======================================================
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

" ======================================================
" Desabilitados
" ======================================================
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>
noremap <Up>    <Nop>

" ======================================================
" Nerdcommenter
" ======================================================

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
