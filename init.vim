" ┌─────────────────────────────────────────┐
" │         VimFiles by André Lima          │
" ├─────────────────────────────────────────┤
" | email: andreneji@gmail.com              |
" | https://github.com/andreneji/vimfiles/  |
" └─────────────────────────────────────────┘

set encoding=UTF-8
" maiúscula(U) / minúsculas(u) - entrar no modo visual

"*** teclas de atalhos
let mapleader="\<space>"

" " if bufname('bash')
" if &buftype == 'bash'
"  echo 'aaaaaaaaa'
" else
"  echo 'bbbbbbbbb'
" endif

"if bufname('bash')
"if &buftype == 'bash'
   " conf. (LINUX)
   source ~/.config/nvim/plug.vim
   source ~/.config/nvim/funcoes.vim
   source ~/.config/nvim/coc.vim
   source ~/.config/nvim/hack.vim

   " inicialiações rápidas
   nnoremap <leader>s   :source ~/.config/nvim/init.vim<cr>
   nnoremap <leader>ini :vs ~/.config/nvim/init.vim<cr>
   nnoremap <leader>dic :vs ~/.config/nvim/dicas.txt<cr>
   nnoremap <leader>coc :vs ~/.config/nvim/coc.vim<cr>
   nnoremap <leader>hac :vs ~/.config/nvim/hack.vim<cr>
   nnoremap <leader>pl  :vs ~/.config/nvim/plug.vim<cr>
   nnoremap <leader>fun :vs ~/.config/nvim/funcoes.vim<cr>
   nnoremap <leader>tmu :vs ~/.tmux.conf<cr>
"else
"   " config. (WIN)
"   :source c:\nvim\plug.vim
"   :source c:\nvim\funcoes.vim
"   :source c:\nvim\coc.vim
"   :source c:\nvim\hack.vim
"
"   nnoremap <leader>s   :source ~\AppData\Local\nvim\init.vim<cr>
"   nnoremap <leader>ini :vs c:\nvim\init.vim<cr>
"   nnoremap <leader>dic :vs c:\nvim\dicas.txt<cr>
"   nnoremap <leader>coc :vs c:\nvim\coc.vim<cr>
"   nnoremap <leader>hac :vs c:\nvim\hack.vim<cr>
"   nnoremap <leader>pl  :vs c:\nvim\plug.vim<cr>
"   nnoremap <leader>fun :vs c:\nvim\funcoes.vim<cr>
"endif

colorscheme gruvbox

map <leader>1           :colorscheme gruvbox<cr>
map <leader>2           :colorscheme tender<cr>
map <leader>3           :colorscheme xcodedarkhc<cr>
map <leader>4           :colorscheme onedark<cr>
map <leader>5           :colorscheme molokai<cr>
map <leader>6           :colorscheme jellybeans<cr>
map <leader>7           :colorscheme dracula<cr>

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
nnoremap <c-w>9         :lefta vsp new <cr>
nnoremap <c-w>-         :bel sp new<cr>
nnoremap <c-w>=         :abo sp new<cr>
nnoremap <c-w>0         :rightb vsp new<cr>

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

"*** selec. tudo da linha p/ (baixo / cima) no modo visual
vmap <leader>k          <esc>$vgg1
vmap <leader>j          <esc>0vG$

"*** salvar e sair
nmap <c-s>              :w<CR>
vmap <c-s>              <esc><c-s>
imap <c-s>              <esc><c-s>
nmap <F3>               :wq<cr>
nmap <F12>              :qa<cr>
" nnoremap <leader>qq     :q<cr>

"*** redimensionar janelas
nnoremap <c-Up>         :resize +2<CR>
nnoremap <c-Down>       :resize -2<CR>
nnoremap <c-Left>       :vertical resize -2<CR>
nnoremap <c-Right>      :vertical resize +2<CR>

"*** move linha selec. p/ cima/baixo com alt+j/alt+k
xnoremap <a-k>          :move '<-2<CR>gv-gv
xnoremap <a-j>          :move '>+1<CR>gv-gv
xnoremap <C-k>          :copy '<-1<CR>gv-gv
xnoremap <c-j>          :copy '>-1<cr>gv-gv

"*** exibir caracteres em branco a direita
nmap <leader>bb         :set list<cr>
nmap <leader>b          :set nolist<cr>

"*** habilitar / desabilitar a quebra de linhas
nmap <leader>ww         :set wrap!<cr>

"*** fugitive + fzf + git
nmap <leader>gj         :diffget //3<cr>
nmap <leader>gf         :diffget //2<cr>
nmap <leader>gs         :G<cr>

let fzf_layout = { 'window': {'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
nnoremap <leader>gc     :GCheckout<CR>

"*** nerdtree
nmap <leader>nt         :NERDTreeToggle<CR>

"*** exibir tracejado
nmap <leader>ii         :IndentLinesToggle<cr>

"*** markdown
nmap <leader>md         <Plug>MarkdownPreviewToggle

"*** esconder distrações
nmap <leader>go         :Goyo<cr>
