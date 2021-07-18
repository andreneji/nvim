Lembretes
-----------------
:checkhealth
:CocConfig

'teste'

-----------------
Dúvidas
-----------------
ok - incluir as cores do css e html5?
ok - configurar autocomplete com o plug coc

habilitar o autosave
desabilitar o CAPS LOCK
configurar autocomplete com o plug coc p/ o ruby
como salvar e já atualizar o arquivo na tela
deixa letra maiscula e minúscula
gf para navegar entre links
ctrl + o p/ retornar

c + J - change indo pra baixo escrevendo
caw

delete tag
dat - delete all tag
dit - delete inside tag

delete + inside + parênteses ou aspas
d + i + )

delete + all + parênteses ou aspas
d + a + )




## VIM novos

* selec. linha(s) no modo visual + :fold e zo ou zc // ocultar / exibir trecho de código
* gg + =G // p/ identar o código

* space + gs // abre o git satus
* s ou u // p/ staged ou unstaged

#### TAB SHORTCUTS
https://gist.github.com/tuxfight3r/0dca25825d9f2608714b
* CTRL+W T // Break out current window into a new tabview
* CTRL+W o // Close every window in the current tabview but the current one
* CTRL+W n // Create a new window in the current tabview
* CTRL+W c // Close current window in the current tabview

* nvim -d .\file01 '.\file01 - bkp' // p/ fazer comparação entre dois ou mais arquivos (nvim diff)

-----------------
Coc comandos
-----------------
:CocUninstall
para navegar na lista de sugestões = Ctrl + n / Ctrl + p

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>




extensions						*coc-list-extensions*

	Manage coc extensions.

	Actions:

	- 'toggle' activate/deactivate extension, default action.
	- 'disable' disable extension.
	- 'enable' enable extension.
	- 'lock' lock/unlock extension to current version.
	- 'doc' view extension's README doc.
	- 'fix' fix dependencies in terminal buffer.
	- 'reload' reload extension.
	- 'uninstall' uninstall extension.


-----------------
Mais utilizados
-----------------
:map <c-r>
:unmap <c-r>
Shift-C
Cc to change line


maiúscula(U) / minúsculas(u) - entrar no modo visual

Vex                       lista pasta do arq. corrente
mksession filename.vim    salva sessão aberta no vim
so filename.vim           abre sessão salva
vim -s filename.vim       abre sessão salva

Ctrl-b/f                  page up/down
cw                        Permite alterar a palavra sob o cursor.
Ctrl-y/e                  scroll line up/page

%                         salta entre agrupadores (pares)
g,                        go to last insert

q + :                     exibe lista de ultimos comandos em janela

zb, zt, zz                centralizando
zb (botom)                posiciona a tela acima da linha do cursor
zt (top)                  posiciona a tela abaixo da linha do cursor

H (head)                  salto cursor p/ o topo sem mover a tela
M (midle)                 salto cursor p/ o meio
L (low)                 salto cursor p/ o fim

buscar na linha:
f[letra]                  busca p/ frente
F[letra]                  busca pra trás
t[letra]                  o mesmo que f[letra], mas uma posição antes.
T[letra]                  o mesmo que f[letra], mas uma posição antes.

------------------------------------------------------
21. ATALHOS (MÃO NA RODA) ESTANDO NO MODO DE INSERÇÃO
------------------------------------------------------

^ = ctrl
^y   - Repete, caracter por caracter, a linha acima a do cursor
^e   - Repete, caracter por caracter, a linha abaixo da do cursor

o   - O Vim entra em um modo de inserção especial "(inserção)" permitindo uma única tarefa
       nos outros modos (normal e comando), após isso, imediatamente retorna ao modo de INSERÇÂO normal
^x^l - Abre uma janela popup permitindo escolher qualquer linha já existente no arquivo
^w   - Apaga (na linha) a última palavra digitada anterior ao cursor
^u   - Apaga (na linha) da posição do cursor até o início da linha
^t   - Indenta linha atual
^d   - Desidenta linha atual

------------------------------------------
Navegando entre abas, janelas e buffers
------------------------------------------

ctrl + fr + setas originais   navega entre as abas abertas
gt 2gt 4gt                    navega entre as abas abertas
vim -p file01 file02          abre N arq. em N abas

Ctrl + w + s									split horizontal - Clona janela atual
Ctrl + w + v									split vertical   - Clona janela atual
Ctrl + w + n									split horizontal - arquivo novo

:split                        Divide tela na horizontal - sem novo de arq., duplica / com nome cria um novo
:vsplit                       Divide tela na vertical

:tabnew                       Nova aba vazia
:tabnew arquivo.txt
:tabclose arquivo.txt
:tabonly                      deixa apenas a aba corrente aberta, as demais continuam em buffer


:[N]vne[w] [++opt] [+cmd] [file]			*:vne* *:vnew*
		Like |:new|, but split vertically.  If 'equalalways' is set
		and 'eadirection' isn't "ver" the windows will be spread out
		horizontally, unless a width was specified.

:[N]new [++opt] [+cmd] {file}
:[N]sp[lit] [++opt] [+cmd] {file}			*:split_f*
		Create a new window and start editing file {file} in it.  This
		behaves like a ":split" first, and then an ":e" command.
		If [+cmd] is given, execute the command when the file has been
		loaded |+cmd|.
		Also see |++opt|.
		Make new window N high (default is to use half the existing
		height).  Reduces the current window height to create room
		(and others, if the 'equalalways' option is set).

:[N]sv[iew] [++opt] [+cmd] {file}		*:sv* *:sview* *splitview*
		Same as ":split", but set 'readonly' option for this buffer.



-------------------------------------
As teclas de comando do editor vim
-------------------------------------


k j l h                         cursores

gu (visual mode)								Make lowercase
gU (visual mode)								Make uppercase

c-w + o                         exibe o buffer full (only one windown)
`. ou g,												retorna p/ úlima linha editada

u                               desfazer (undo)
Ctrl+R                          refazer
.                               refaz o ultimo comando

e                               Ir para o fim da palavra atual
w                               Ir para a próxima palavra
b                               Ir para a palavra anterior
}                               Ir para o próximo parágrafo
{                               Ir para o parágrafo anterior
0, $ e ^                        inicio e fim de linha

gg e G                          Ir p/ inicio e fim do arquivo
- e +                           sobe e desce uma linha
a e A                           começa a inserção após e no final da linha
o e O                           abre nova linha abaixo e acima

o                               Abrir nova linha em modo Insert
dd                				Excluir linha

yy                  			Copiar linha
Y                                 															Copiar linha

[p                              															Colar antes
]p                              															Colar depois
p																Colar

u                               Desfaz (undo) a última ação.
U                               Desfaz as últimas ações na linha atual.

dd                              Apaga linha do cursor
3dd                             Apaga 3 linhas de uma vez.
D = d$                          Apaga o conteúdo da linha, após o cursor.
C                               Apaga o conteúdo da linha, após o cursor e inicia o modo de inserção de conteúdo.
dw                              Apaga uma palavra à direita.
4dw                             Apaga 4 palavras à direita.
di (`{["<                       Apaga dentro dos 5: (`{["<		segue um ex p/ teste (conteído a ser deletado) + blabla
d~>                             Apaga tudo até o sinal de >

cit                             Apaga dentro da tag
cat                             Apaga fora da tag


ctrl + x                        decrementa número
ctrl + a												incrementa número
cw                              Permite alterar a palavra sob o cursor.
x                               Apaga o caractere sob o cursor.
r                               Substitui um caractere.
R                               Inicia o modo de sobrescrita a partir da posição atual do cursor.
s                               Substitui o caractere na posição do cursor e continua a edição em modo de inserção.
S                               Começa a inserção na linha atual, substituindo o seu conteúdo.
~ (til)                         Altera a caixa do caractere sob o cursor.
*                               busca p/ frente da palavra sobre o cursor


/                               buscar
:v                              Modo visual
:i                              Modo insert
:q                              Sair
:q!                             Forçar Sair
:w                              Salvar
:w!                             Forçar Salvar
shift + zz                      Grava o arquivo e fecha o vim.
:wq                             Grava o arquivo e fecha o vim.

:sview nome-do-arquivo          open read only

s ou o                          utilizando NERDTree
i                               utilizando NERDTree


--------------
Modo Visual
--------------

v       block
V       visual line
Ctrl + v    visual block
o   p/ mover o cursor p/ a direita ou esquerda da seleção
gv  p/ voltar a última seleção


shift + A I   /   s c          escreve em modo coluna

help visual-operators






-----------------------------------------
Opções de inicialização do editor Vim
-----------------------------------------

+n nome-do-arquivo — abre ‘nome-do-arquivo’ na linha ‘n’.
+ nome-do-arquivo — abre ‘nome-do-arquivo’ na última linha.
+/string nome-do-arquivo — abre ‘nome-do-arquivo’ e posiciona o cursor sobre a string indicada.
-R nome-do-arquivo — abre no modo ‘apenas leitura’.
-r nome-do-arquivo — em caso de ter havido um crash, em que o Vim tenha sido interrompido acidentalmente, é possível recuperar arquivos danificados com esta opção.



-------------------------------------------------------
Como alterar as dimensões das janelas dentro do Vim
-------------------------------------------------------

Ctrl = ^
teclas Ctrl + W ou apenas ^W (p/ minimizar).

Segue a lista:

^W=     “tenta” equalizar as dimensões das janelas, na horizontal.
Pode ser influenciado pelos parâmetros winheight e winwidth.
^W-     reduz/diminui a altura da janela atual em uma linha.
^W+     aumenta a altura da janela em uma linha.
^W<     reduz a largura da janela em uma coluna.
^W>     aumenta a largura da janela em uma coluna.
^W|     altera as dimensões horizontais da janela atual para o maior valor possível.
Só pra lembrar, você pode acrescentar um número antes do ^W, para aplicar um valor maior ao comando.
Por exemplo, o comando 5^W- reduz a altura da janela ativa em 5 linhas, de uma vez.

Como redimensionar janelas, com comando na CLI do Vim
Também é possível usar comando CLI dentro do Vim, para controlar os tamanhos das janelas.
Use o seguinte comandos/parâmetros para reajustar as dimensões da janela ativa:

:vertical resize n
No caso, acima, n é o valor em número de colunas para o qual a janela será redimensionada na vertical.



-------------------------------------------------
Como organizar as janelas dentro do editor Vim
-------------------------------------------------

Todos os comandos de janelas começam com a combinação Ctrl + W, seguida da combinação/tecla de comando específica

Ctrl + w, r — Mantenha a tecla Ctrl pressionada, seguido das teclas W e R.
Este comando é cíclico. Ou seja, move a janela atual para a direita e, quando chegar ao final, volta à posição inicial.

Há diferença de comportamento entre ‘r’ e ‘R’: A primeira move o elemento para a direita e a outra faz o contrário.
Ctrl + w, x — troca janelas vizinhas de lugar (uma com a outra).


"*** mover janela - ctrl + w + shift + (kjhlt):
^WK — Move a janela selecionada (atual) para o topo da tela, usando toda a largura da tela do terminal.
^WJ — Reposiciona a janela atual para baixo de todas as outras, usando toda a largura do terminal.
^WH — Move a janela selecionada para a esquerda de todas as outras janelas e amplia sua altura.
^WL — Faz o contrário do comando anterior — ou seja, reposiciona a janela atual à direita das outras e também amplia totalmente a sua altura.
^WT — Este comando abre uma nova aba (se já não houver alguma), na sessão atual do Vim, e move a janela atual para lá.


"*** mover cursor entre as janelas
CTRL + W + ↓, CTRL + W + J — Move o cursor para a próxima janela abaixo. Note que o comando não é cíclico, ou seja, quando chegar à última janela, embaixo, ele para de ter efeito.
CTRL + W + ↑, CTRL + W + K — Move para a janela de cima.
CTRL + W + ←, CTRL + W + H — Move para a janela à esquerda.
CTRL + W + →, CTRL + W + L — Move para a janela à direita.
CTRL + W + W — Move o cursor para a próxima janela

CTRL + W + T — Move o cursor direto para a janela mais próxima do canto superior esquerdo (topo).
CTRL + W + B — Move o cursor direto para a janela mais próxima do canto inferior direito.
CTRL + W + P — Move o cursor para a janela previamente acessada.

---------------------------------------------
Como abrir múltiplas janelas no editor Vim
---------------------------------------------

Você pode enfileirar arquivos, na linha de comando, para cada um abrir em uma janela própria, dentro do Vim, com o uso da opção ‘-o’
segue um exemplo:
vim -o arquivo1.txt arquivo2.txt



---------------------------------------
Como ajustar os tamanhos das janelas
---------------------------------------

Você pode alterar a altura da janela atual com o comando :set winheight=x, em que ‘x’ é o valor referente às linhas de altura que a janela passará a ter.
Quando você altera a geometria de uma janela, o Vim, muda a das outras janelas automaticamente.
Em um ambiente com janelas dispostas lado a lado, é possível editar a largura com o comando :set winwidth=x.



-------------------------------------------------------
Como abrir novas janelas dentro de uma sessão do Vim
-------------------------------------------------------

Use o comando :split para dividir a janela atual.
A nova janela será uma cópia da atual — ou seja, tudo o que você escrever em uma, será atualizado na outra.
Apenas experimente.
:vsplit hello.c



--------------------------------------
As opções do comando :split no Vim
--------------------------------------

:[n]split [++opt] [+cmd] [nome-do-arquivo]
… em que:

n — estabelece a quantidade de linhas (altura) da nova janela, posicionada no topo.
opt — passa opções para o comando split, que precisam ser precedidos pelos sinais ++.
cmd — precedido por um único sinal +, passa um comando a ser executado em relação à nova janela.
nome-do-arquivo — especifica o nome do arquivo a ser editado dentro da nova janela.

Veja outro exemplo:
:vsplit ++fileformat=unix hello.c

você também pode usar os comandos :new e :vnew para abrir novas janelas horizontais e verticais, respectivamente.
Os comandos ‘new’ aceitam os mesmos parâmetros dos ‘split’.



--------------------------------------
Como recortar e colar texto no Vim
--------------------------------------

‘dw’, recorta a palavra que se encontra à direita do cursor ou ‘db’, recorta a palavra à esquerda
‘3d’, recorta 3 linhas inteiras



-------------------------------------
como copiar e colar no editor Vim
-------------------------------------

Para copiar conteúdo, use o comando ‘y’ (yank).
Veja alguns exemplos:

‘yy’, para copiar a linha atual
‘yw’, para copiar a próxima palavra. Se quiser copiar as próximas 3 palavras, use ‘y3w’
‘y$’, para copiar do ponto atual até o final da linha
Depois de copiado, basta mover o cursor para o local, no texto, em que deseja inserir o conteúdo do buffer e teclar ‘p’.



-----------------------------------------
Como forçar o realce de sintaxe no vim
-----------------------------------------

set syntax=on
Se você quiser um realce específico, então indique a linguagem:

:set syntax=python
:set syntax=perl
Para desligar, use ‘off’:

:set syntax=off



------------------------------------------------------
How to Switch between Buffers Quickly in Neovim/Vim
------------------------------------------------------

To show a list of opened buffers, we can use the :buffers command. Below is an example output:

3      "train.py"                     line 1
4 %a   "main.py"                      line 17
6      "keys.py"                      line 1
7      "utils.py"                     line 1
8 #    "val_CTC.py"                   line 2



--------------------------------------------------------------------------
The first number is a unique buffer number corresponding to each buffer.
--------------------------------------------------------------------------

The native way
In command mode, some of the commands to change buffers are list below:

:bfirst: change to first buffer in the buffer list
:blast: change to last buffer in the buffer list
:bnext: change to next buffer
:bprevious: change to previous buffer
Or you can use :b <TAB> to choose from currently opened buffers.


:[N]sb		 abre uma janela em buffer em tela cheia
:[N]b      abre uma janela em buffer dividindo a tela

:[N]b[uffer][!] [+cmd] {bufname}				*{bufname}*
		Edit buffer for {bufname} from the buffer list.  A partial
		name also works, so long as it is unique in the list of
		buffers.

:[N]sb[uffer] [+cmd] [N]				*:sb* *:sbuffer*
		Split window and edit buffer [N] from the buffer list.  If [N]
		is not given, the current buffer is edited.  Respects the
		"useopen" setting of 'switchbuf' when splitting.  This will
		also edit a buffer that is not in the buffer list, without
		setting the 'buflisted' flag.
		Also see |+cmd|.

:[N]sb[uffer] [+cmd] {bufname}
		Split window and edit buffer for |{bufname}| from the buffer
		list.  This will also edit a buffer that is not in the buffer
		list, without setting the 'buflisted' flag.
		Note: If what you want to do is split the buffer, make a copy
		under another name, you can do it this way: >
			:w foobar | sp #

:[N]bn[ext][!] [+cmd] [N]				*:bn* *:bnext* *E87*
		Go to [N]th next buffer in buffer list.

							*:sbn* *:sbnext*
:[N]sbn[ext] [+cmd] [N]
		Split window and go to [N]th next buffer in buffer list.
		Wraps around the end of the buffer list.  Uses 'switchbuf'
		Also see |+cmd|.

:[N]bN[ext][!] [+cmd] [N]		*:bN* *:bNext* *:bp* *:bprevious* *E88*
:[N]bp[revious][!] [+cmd] [N]     -  Go to [N]th previous buffer in buffer list.

:[N]sbN[ext] [+cmd] [N]			*:sbN* *:sbNext* *:sbp* *:sbprevious*
:[N]sbp[revious] [+cmd] [N]
		Split window and go to [N]th previous buffer in buffer list.



--------------------------------------------------------------------------
If there are a few buffers, it is easy to switch using the above command. However, if we have a dozen of opened buffers, it is cumbersome to use these commands.
--------------------------------------------------------------------------
Switching buffers using buffer number
We can switch to a buffer quickly if we know its number. If we know the number of a buffer, we can use NUM Ctrl-6 to go to a particular buffer (replace NUM with actual buffer number). For example, to switch to main.py, we will press 4<C-6>.



--------------------------------------------------------------------------
This is still inconvenient — since we have to find the buffer number first.
--------------------------------------------------------------------------
A better solution for buffer switching
If you have installed vim-airline ，you can configure it to show the buffer number on the top of the window tabline. Just add the following settings to Nvim config file init.vim:

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
Restart Nvim and you will find that each buffer has a number on the left of the file name. Then you can easily go to a buffer.




--------------------------------------------------------------------------
9.1. Detalhes dos registradores
--------------------------------------------------------------------------

0     - Tem o último texto copiado
1 a 9 - Ficam os textos deletados (1 o mais recente, 9 o mais antigo)
-       sinal de menos, fazendo referência a algo pequeno, ficam os textos de menos de uma linha
        que tenham sido deletados. A exceção é o underscore, que não coloca o conteúdo em nenhum registrador
"dd   - Desta forma a linha deletada não vai para nenhum registrador

9.2. Manipulando registros
:let @a=@_ ..... Limpa o registro a
:let @a="" ..... Limpa o registro a
:let @a=@" ..... Salva registro sem nome *N*
:let @*=@a ..... Copia o registro para o buffer de colagem
:let @*=@: ..... Copia o ultimo comando para o buffer de colagem
:let @*=@/ ..... Copia a última busca para o buffer de colagem
:let @*=@% ..... Copia o nome do arquivo para o buffer de colagem
:reg       ..... Mostra o conteúdo de todos os registros

9.3. Copiar
"myy    - Copia toda a linha no registrador "m"
"mY     - Copia toda a linha no registrador "m"
"jye    - Copia até o fim da palavra no registrador "j"
"+yy    - Copia toda a linha na área de transferência
          (o sinal de mais deve ser digitado mesmo, ele é o registrador)
ggVG"+y - Vai até o início do arquivo (gg), inicia o Modo Visual de Linhas (V),
          vai até a última linha (G) e copia para a área de transferência (¿+y)

9.4. Colar
"+P         - Cola da área de transferência (o sinal de mais deve ser digitado)
"mp         - Cola do registrador eme
5"mp        - Cola do registrador eme cinco vezes (teclar SPC após ")
^r+registro - Cola no modo de inserção
^r++        - Cola o conteudo da área de transferência no modo de inserção (Ctrl+r+Shift++)




[, ]]                     saltos entre classes
[m*, ]m                   saltos entre métodos
[(, [{                    achar par não "casado"
<Ctrl-o> e <ctrl-i>       último salto

:%s/tst01/tst02/g         p/ subtituir palavras no arq em tempo real - g alterar na mesma linha




		"=================================================================
                comentados que podem vir a ser úteis como exemplos
		"=================================================================

"autocmd vimenter * NERDTree            "*** carregar ao inicializar ***
"let mapleader="`"							"teclas de atalho
"nnoremap <leader>ini  :ed ~\AppData\Local\nvim\init.vim<cr>
"nnoremap dic          :ed ~\AppData\local\nvim\dicasNvim.txt<cr>
"nnoremap <leader> nerd :NERDTree<cr>

"MAX_connections_allowed
"MAX_CONNECTIONS_ALLOWED
"imap <c-u> <esc> veU<shift-a>
"set mouse=a
"nnoremap <leader>ws	:wsource ~\AppData\Local\nvim\init.vim<cr>
"map <C-a> <esc>ggvG
"vmap <C-C> "*y
"nnoremap <leader> p "*p
"vmap <C-X> x


"*** Better tabbing
" vnoremap < <gv
" vnoremap > >gv
"*** CocList
" nmap <leader>ex         :CocCommand explorer<CR>

" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline_powerline_fonts = 0
" let g:airline#extensions#capslock#enabled = 1
" let g:airline#extensions#capslock#symbol = 'CAPS'

"*** navegar entre buffers - (M = ALT)
" nnoremap <M-Right>    :bn<cr>     " prev
" nnoremap <M-Left>     :bp<cr>     " next
" nnoremap <c-x>        :bp\|bd #<cr>
"
" maiúscula(U) / minúsculas(u) - entrar no modo visual
"
" nnoremap <C-Up>          viwU               " palavra p/ maiúscula
" nnoremap <C-Down>        viwu               " palavra p/ minúscula
" nnoremap <M-Up>          <Esc>0v$<esc>gUU   " toda LINHA p/ maiúscula (M = Alt)
" nnoremap <M-Down>        <Esc>0v$<esc>guu   " toda linha p/ minúscula




		"=================================================================
							"arquivo de configuração do nvim no win10
		"=================================================================

"https://vimawesome.com - plugins
"PlugInstall - PlugUpdate - PlugClean (apagar no init.vim)
"h 'statusLine'

"nnoremap <leader>; A;<esc>	"; no fim da linha
"nnoremap <leader>ev :vsplit ~\AppData\Local\nvim\init.vim<cr>

" windowd-style key mappings
" " estilo de atalhos do windows
" " copy - copiar
"vmap <C-C> y
" " paste - colar
"nmap <C-V> p
" " cut - cortar
" " undo - desfazer
" " select all - selecionar tudo
"set mouse=a


"................................................................OPCOES DO SET
"(IncrementedSearch, HighLightedSearch, IgnoreCase, SmartCaSe)
"set is hls ic scs magic   "opcoes espertas de busca
"set sm             "ShowMatch: mostra o par do parenteses/chaves recem fechado
"set hid            "HIDden: nao lembro pra que servia mas era massa
"set aw             "AutoWrite: gravacao automatica a cada alteracao
"set ai             "AutoIndent: identacao automatica
"set ts=4           "TabStop: numero de caracteres de avanco do TAB
"set report=0       "reporta acoes com linhas
"set shm=filmnrwxt  "SHortMessages: encurta as mensagem do rodape
"set et             "ExpandTab: troca TABs por espacos
"retab              "converter os TABs ja existentes

"set ruler          "mostra a posicao do cursor, regua
"set showcmd        "mostra o comando sendo executado
"set laststatus=2   "mostra N linhas de estado (status)

"set textwidth=70   "quebra de linha
"set bs=0           "comportamento do backspace
"set nosmartindent  "desligando pois esta padrao no CL40
"set visualbell     "pisca a tela ao inves de bipar
"set wrap           "forca a quebra de linha
"set nojoinspaces   "! coloca 2 espacos apos o . quando usando o gq
"set sw=1           "numero de colunas para o comando > (ShiftWidth)
"frg jvyqzbqr=ybatrfg,yvfg:shyy  "cnen pbzcyrgnpnb qb GNO vthny onf


"*** h 'statusLine' ***
" set statusline=
" set statusline+=%#CursorLineNr#        "~\Highlighting text
" set statusline+=\ %y
" set statusline+=\ %r
" set statusline+=\ %F
" set statusline+=%#PmenuThumb#
" set statusline+=\ {%M}
" set statusline+=%#CursorLineNr#
" set statusline+=%=                     "Right side settings
" set statusline+=%#CursorLineNr#
" set statusline+=\ %c:%l/%L
" set statusline+=\ %p%%
" set statusline+=\ [%n]



"*** altera esquema de cores
" map <F1> :colorscheme gruvbox<CR>
" map <F2> :colorscheme base16-default-dark<CR>
" map <F3> :colorscheme hybrid_reverse<CR>
" map <F4> :colorscheme PaperColor<CR>
" map <F5> :colorscheme spacegray<CR>



" let g:netrw_altv = 1
" map <c-m> <esc>:Vex<cr>


" Plug 'ctrlpvim/ctrlp.vim'            "busca fuzzy
" Plug 'roxma/nvim-completion-manager'  "auto complete - DESCONTINUADO
" Plug 'zxqfl/tabnine-vim'              "auto complete tbm
