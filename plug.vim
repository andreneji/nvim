call plug#begin()

"*** aparência
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'                                " acende e apaga paragrafos
Plug 'morhetz/gruvbox'                                  " temas para o nvim
Plug 'vim-airline/vim-airline'                          " barra de status personalizada - :help airline
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'                               " gerenciador de arquivos
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'                               " tela de entrada personalizada

"*** programação
Plug 'sheerun/vim-polyglot'                             " sintax de varias linguagens atualizado
Plug 'neoclide/coc.nvim', {'branch': 'release'}         " auto complete com várias funções
Plug 'jiangmiao/auto-pairs'                             " inclui pares ao digitar
Plug 'tpope/vim-surround'                               " inclui pares na setença ja criada
Plug 'terryma/vim-multiple-cursors'                     " altera palavas em linhas diferentes em tempo real
Plug 'dense-analysis/ale'                               " exibe erros no código na digitação
Plug 'mattn/emmet-vim'                                  " formata comandos com abrev. ex: htlm:5 e css / inclui tags entre os textos
Plug 'tomtom/tcomment_vim'                              " insere comentários em N linguagens
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " search de arquivos
Plug 'junegunn/fzf.vim'
Plug 'ap/vim-css-color'
Plug 'vim-ruby/vim-ruby'
Plug 'shime/vim-livedown'                               " atualiza pag. (site) automatico - gc / gc + N+j ou k
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " If you have nodejs and yarn

" Plug 'tomasr/molokai'
" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'gosukiwi/vim-atom-dark'
" Plug 'scrooloose/nerdtree'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'Yggdroot/indentLine'                            " exibe tracejado com identação dos comandos
" Plug 'vim-scripts/Brolink.vim'
" Plug 'sheerun/html5.vim'
"completa diretorios do sistema
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()
