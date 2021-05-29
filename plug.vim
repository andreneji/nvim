call plug#begin()

"*** temas
Plug 'morhetz/gruvbox'
Plug 'jacoborus/tender.vim'
Plug 'arzg/vim-colors-xcode'
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'
Plug 'nanotech/jellybeans.vim'
Plug 'dracula/vim', { 'as': 'dracula' }

"*** aparência
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'                                                  " acende e apaga paragrafos
Plug 'vim-airline/vim-airline'                                            " barra de status personalizada - :help airline
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'                                                 " gerenciador de arquivos
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'                                                 " tela de entrada personalizada

"*** programação
Plug 'sheerun/vim-polyglot'                                               " sintax de varias linguagens atualizado
Plug 'neoclide/coc.nvim', {'branch': 'release'}                           " auto complete com várias funções
Plug 'jiangmiao/auto-pairs'                                               " inclui pares ao digitar
Plug 'tpope/vim-surround'                                                 " inclui pares na setença ja criada
Plug 'terryma/vim-multiple-cursors'                                       " altera palavas em linhas diferentes em tempo real
Plug 'dense-analysis/ale'                                                 " exibe erros no código na digitação
Plug 'mattn/emmet-vim'                                                    " formata comandos com abrev. ex: htlm:5 e css / inclui tags entre os textos
Plug 'tomtom/tcomment_vim'                                                " insere comentários em N linguagens
Plug 'tpope/vim-fugitive'                                                 " vim + git
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }                       " search de arquivos
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim' 
Plug 'ap/vim-css-color'
Plug 'vim-ruby/vim-ruby'
Plug 'shime/vim-livedown'                                                 " atualiza pag. (site) automatico - gc / gc + N+j ou k
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }  " If you have nodejs and yarn

" Plug 'scrooloose/nerdtree'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Yggdroot/indentLine'                                                " exibe tracejado com identação dos comandos
" Plug 'vim-scripts/Brolink.vim'
" Plug 'sheerun/html5.vim'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }           " completa diretorios do sistema

call plug#end()

let g:gruvbox_contrast_dark = ('hard')
