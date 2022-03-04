" ┌─────────────────────────────────────────┐
" │        NvimFiles by André Lima          │
" ├─────────────────────────────────────────┤
" | email: andreneji@gmail.com              |
" | https://github.com/andreneji/vimfiles/  |
" └─────────────────────────────────────────┘

set encoding=UTF-8

"*** teclas de atalhos
let mapleader="\<space>"

" conf. (LINUX)
source $HOME/.config/nvim/plug.vim
source $HOME/.config/nvim/funcoes.vim
"source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/hack.vim

" inicialiações rápidas
nnoremap <leader>s      :source $HOME/.config/nvim/init.vim<cr>
nnoremap <leader>ini    :vs $HOME/.config/nvim/init.vim<cr>
"nnoremap <leader>coc    :vs $HOME/.confg/nvim/coc.vim<cr>
nnoremap <leader>hac    :vs $HOME/.config/nvim/hack.vim<cr>
nnoremap <leader>pl     :vs $HOME/.config/nvim/plug.vim<cr>
nnoremap <leader>fun    :vs $HOME/.config/nvim/funcoes.vim<cr>
nnoremap <leader>tmu    :vs $HOME/.tmux.conf<cr>

"*** themes
let g:gruvbox_invert_selection='0'
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE

map <leader>0           :colorscheme gruvbox<cr>
map <leader>1           :colorscheme xcodedarkhc<cr>
map <leader>2           :colorscheme tender<cr>

"*** atalho p/ o fzd (search)
"nnoremap <C-p>          :Files<cr>

"*** minimizar buffers, salvando sessão
nnoremap <leader>mo     :mksession! ~/.session.vim<cr>:wincmd o<cr>
nnoremap <leader>mk     :mksession! ~/.session.vim<cr>
nnoremap <leader>ms     :source ~/.session.vim<cr>

"*** ocultar linhas (Toogle:za | all open/close:zr/zm | delete:zd)
xnoremap <z-f>          :fold<cr>

"*** navegar entre buffers
nnoremap <leader>k      :bn<cr>
nnoremap <leader>j      :bp<cr>

"*** abrir e navegar entre tabs (abas)
nnoremap <tab>k         :tabnext<cr>
nnoremap <tab>j         :tabprev<cr>
nnoremap <leader><tab>  :tabnew<cr>

"*** visualizar e fechar buffers
nnoremap <S-F9>         :buffers<cr>
nnoremap <Leader><F9>	:sb<cr>
nnoremap <c-w>u  	    :bun!<cr>
nnoremap <c-w>q   	    :qa<cr>
nnoremap <c-w>b	        :bd<cr>
nnoremap <leader>b      :b<cr>

"*** make tab go to the matching pair item
nnoremap <Tab> %

"*** open new splits in a semantic way
nnoremap <c-w>h         :lefta vsp new <cr>
nnoremap <c-w>j         :bel sp new<cr>
nnoremap <c-w>k         :abo sp new<cr>
nnoremap <c-w>l         :rightb vsp new<cr>

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

"*** salvar e sair (recursive)
nmap <c-s>              :w<CR>
vmap <c-s>              <esc><c-s>
imap <c-s>              <esc><c-s>

"*** redimensionar janelas
nnoremap <c-Up>         :resize +2<cr>
nnoremap <c-Down>       :resize -2<cr>
nnoremap <c-Left>       :vertical resize -2<cr>
nnoremap <c-Right>      :vertical resize +2<cr>

"*** move linha selec. p/ cima/baixo com alt+j/alt+k - (M=ALT e S=Shift)
xnoremap <S-k>          :move '<-2<cr>gv-gv
xnoremap <S-j>          :move '>+1<cr>gv-gv

"*** exibir caracteres em branco a direita
nnoremap <leader>bb     :set list<cr>
nnoremap <leader>b      :set nolist<cr>

"*** habilitar / desabilitar a quebra de linhas
nnoremap <leader>ww     :set wrap!<cr>

"*** fugitive + fzf + git
nnoremap <leader>gj     :diffget //3<cr>
nnoremap <leader>gf     :diffget //2<cr>
nnoremap <leader>gs     :G<cr>

"*** fzf-checkout - Manage branches and tags with fzf
nnoremap <leader>gc     :GCheckout<cr>

"*** nerdtree
nnoremap <leader>nt     :NERDTreeToggle<CR>

"*** exibir tracejado
nnoremap <leader>ii     :IndentLinesToggle<cr>

"*** markdown
nmap <leader>md         <Plug>MarkdownPreviewToggle

"*** esconder distrações
nnoremap <leader>go     :Goyo<cr>

"*** Whichkey - show command completion at bottom
nnoremap <silent> <leader>q :<c-u>WhichKey '<Space>'<cr>
vnoremap <silent> <leader>q :<c-u>WhichKeyVisual '<Space>'<cr>

"*** au[tocmd] capslock = scape quando entrar no vim e = capslock quando sair
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

"*** altera a tecla CAPS LOCK p/ ESC
nmap <leader>za         :silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'<cr>
nmap <leader>zz         :silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'<cr>

" Behave Vim
nnoremap Y y$

" keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Jumplist mulations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" Retira os ^M que ficam no final de arquivos salvos pelo windows
nnoremap <leader>tt     :%s/\r//g

" Minimiza / maximiza buffers fora do cursor
nnoremap <leader>mm     :MaximizerToggle!<cr>
