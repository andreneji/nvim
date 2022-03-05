call plug#begin()

"*** temas
Plug 'gruvbox-community/gruvbox'
Plug 'arzg/vim-colors-xcode'
Plug 'jacoborus/tender.vim'

"*** aparência
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'                                                  " acende e apaga paragrafos
Plug 'vim-airline/vim-airline'                                            " barra de status personalizada - :help airline
Plug 'vim-airline/vim-airline-themes'
Plug 'unblevable/quick-scope'                                             " destaca caracter da palavra/frase na linha
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'                                                 " tela de entrada personalizada
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }  " If you have nodejs and yarn
Plug 'shime/vim-livedown'                                                 " atualiza pag. (site) automatico - gc / gc + N+j ou k
Plug 'Yggdroot/indentLine'                                                " exibe tracejado com identação dos comandos
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }      " show command completion at bottom
Plug 'voldikss/vim-floaterm'                                              " terminal inside vim

"*** gerenciador de arquivos
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"*** programação
Plug 'airblade/vim-gitgutter'                                             " shows a git diff in the sign column
" Plug 'neoclide/coc.nvim', {'branch': 'release'}                           " auto complete com várias funções
Plug 'jiangmiao/auto-pairs'                                               " inclui pares ao digitar
Plug 'terryma/vim-multiple-cursors'                                       " altera palavas em linhas diferentes em tempo real
Plug 'mattn/emmet-vim'                                                    " formata comandos com abrev. ex: htlm:5 e css / inclui tags entre os textos
Plug 'preservim/nerdcommenter'                                            " insere comentários em N linguagens
Plug 'tpope/vim-fugitive'                                                 " vim + git
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }             " completa diretorios do sistema

"*** debug
" Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'                                                  " minimizar/maximar buffers

"*** search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }                       " search de arquivos
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
call plug#end()

let g:gruvbox_contrast_dark = ('hard')
