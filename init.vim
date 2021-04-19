set encoding=UTF-8

" maiúscula(U) / minúsculas(u) - entrar no modo visual

"*** teclas de atalhos
let mapleader="\<space>"

if bufname('bash')
   "  Configurações no (LINUX)
   source ~/.config/nvim/plug.vim
   source ~/.config/nvim/funcoes.vim
   source ~/.config/nvim/coc.vim
   " source ~/.config/nvim/hack.vim

   " *** inicialiações rápidas
   nnoremap <leader>s   :source ~/.config/nvim/init.vim<cr>
   nnoremap <leader>ini :vs ~/.config/nvim/init.vim<cr>
   nnoremap <leader>dic :vs ~/.config/nvim/nvimDicas.txt<cr>
   nnoremap <leader>coc :vs ~/.config/nvim/coc.vim<cr>
   nnoremap <leader>hac :vs ~/.config/nvim/hack.vim<cr>
   nnoremap <leader>pl  :vs ~/.config/nvim/plug.vim<cr>
   nnoremap <leader>fun :vs ~/.config/nvim/funcoes.vim<cr>
else
   "*** Configurações no (WIN)
   :source c:\nvim\plug.vim
   :source c:\nvim\funcoes.vim
   :source c:\nvim\coc.vim
   " :source c:\nvim\hack.vim

   nnoremap <leader>s   :source ~\AppData\Local\nvim\init.vim<cr>
   nnoremap <leader>ini :vs c:\nvim\init.vim<cr>
   nnoremap <leader>dic :vs c:\nvim\nvimDicas.txt<cr>
   nnoremap <leader>coc :vs c:\nvim\coc.vim<cr>
   nnoremap <leader>hac :vs c:\nvim\hack.vim<cr>
   nnoremap <leader>pl  :vs c:\nvim\plug.vim<cr>
   nnoremap <leader>fun :vs c:\nvim\funcoes.vim<cr>
endif

colorscheme gruvbox
let g:gruvbox_contrast_dark = ('hard')

map <leader>1 :colorscheme gruvbox<CR>
map <leader>2 :colorscheme tender<cr>
map <leader>3 :colorscheme xcodedarkhc<cr>
map <leader>4 :colorscheme onedark<cr>
map <leader>5 :colorscheme molokai<cr>
map <leader>6 :colorscheme jellybeans<cr>
map <leader>7 :colorscheme dracula<cr>

"*** atalho p/ o fzd (search)
nnoremap <C-p>          :Files<cr>

"*** navegar entre buffers - (M = ALT)
nnoremap <M-l>          :bn<cr>
nnoremap <M-h>          :bp<cr>

"*** visualizar e fechar buffers
nmap <F9>               :buffers<cr>
nmap <Leader><F9>	    :sb<cr>
nnoremap <Leader>q	    :bd<cr>
nnoremap <Leader>w	    :bun<cr>
nnoremap <Leader>qq	    :bd!<cr>
map <Leader>b           :b
" nnoremap <Leader>q	:bd \| bd<cr>

"*** make tab go to the matching pair item
nnoremap <Tab> %

"*** open new splits in a semantic way
nnoremap <Leader>9      :lefta vsp new <cr>
nnoremap <Leader>-      :bel sp new<cr>
nnoremap <Leader>=      :abo sp new<cr>
nnoremap <Leader>0      :rightb vsp new<cr>

"*** alterar entre janelas c/ cursor
nnoremap <c-h>          <c-w>h
nnoremap <c-j>          <c-w>j
nnoremap <c-k>          <c-w>k
nnoremap <c-l>          <c-w>l

"*** copiar/colar - (S = Shift)
nnoremap <C-insert>     "+y
vnoremap <C-insert>     "+y
nnoremap <S-insert>     "+gP
vnoremap <S-insert>     "+gP
inoremap <S-insert>     <c-r>*

"*** desfazer - p/ refazer ctrl+r
noremap <C-Z>           u
inoremap <C-Z>          <C-O>u

"*** selecionar tudo da linha p/ (baixo / cima) no modo visual
vmap <leader>aa         <esc>$vgg1
vmap <leader>a          <esc>0vG$
" nmap <C-a>            <esc>0vG$<cr>
" vmap <leader><C-a>    <esc>0vG$<cr>

"*** salvar e sair
nmap <c-s>              :w<CR>
vmap <c-s>              <esc><c-s>
imap <c-s>              <esc><c-s>
nmap <F3>               :wq<cr>
nmap <F12>              :qa<cr>
nnoremap <c-q>          :q<cr>

"*** redimensionar janelas
nnoremap <c-Up>         :resize +2<CR>
nnoremap <c-Down>       :resize -2<CR>
nnoremap <c-Left>       :vertical resize -2<CR>
nnoremap <c-Right>      :vertical resize +2<CR>

"*** mover linha selec. p/ cima/baixo com alt+j/alt+k
xnoremap <a-k>          :move '<-2<CR>gv-gv
xnoremap <a-j>          :move '>+1<CR>gv-gv
xnoremap <C-k>          :copy '<-1<CR>gv-gv
xnoremap <c-j>          :copy '>-1<cr>gv-gv

" exibe caracteres em branco a direita
nmap <leader>bb         :set list<cr>
nmap <leader>b          :set nolist<cr>

nmap <leader>ww         :set wrap!<cr>      " habilita / desabilita a quebra de linhas
nmap <C-g>              :Goyo<cr>           " esconde barras cima / baixo

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

"*** nerdtree
nmap <F2>               :NERDTreeToggle<CR>
nmap <C-n>              :NERDTreeToggle<CR>
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

noremap <c-w>h  <Nop>
noremap <c-w>j  <Nop>
noremap <c-w>k  <Nop>
noremap <c-w>l  <Nop>

"** airline
set laststatus=2
let g:airline_theme='serene'
let g:airline#extensions#tabline#enabled = 1
let g:airline_statusline_ontop=0
let g:airline#extensions#tabline#formatter = 'unique_tail'
