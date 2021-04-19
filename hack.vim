" colo materialbox
" let g:indentLine_enabled = 0
" map <c-i>                    :IndentLinesToggle<cr>

" ao teclar a barra de espaço no modo normal, o Vim
" irá colapsar ou expandir o bloco de código do cursor
" foldlevel é a partir de que nível de indentação o 
" código iniciará colapsado
" set foldmethod=syntax
" set foldlevel=99
" nnoremap <space> za


" let g:fzf_custom_ignore = '\v[\/]\.(swp|zip|jpg|png|jpeg|mp4|mp3|wmv|rar)$'
" let g:fzf_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" let g:fzf_show_hidden = 1





" filetype plugin on
" let g:NERDSpaceDelims = 1
" let g:NERDDefaultAlign = 'left'
" map cc <Plug>NERDCommenterInvert


" python3 -m pip install --upgrade pip
" python3 -m pip install --user flake8 pylint
" incluir flake8 nas PATH

" npm install eslint 
" a primeira vez que for rodar o proj. com o eslint, na pasta do fir. rodar:
" eslint --init
" :set updatetime=300

" let g:ale_linters = {'python': ['flake8', 'pylint'], 'javascript': ['eslint']}
" let g:ale_completion_enabled = 0
" let g:ale_fixers = { 'python': ['yapf'], }
" nmap <F8> :ALEFix<CR>
" let g:ale_fix_on_save = 1




"*** nerdtree
" nmap <F8>	  	               :NERDTreeToggle<cr>
" nmap <c-n>                   :NERDTree<cr>

" set guifont=Hack\ NF:h12 
" set guifontset=Hack\ NF\ Mono:h12

" set guifontset=Anonymice\ Nerd\ Font\ Mono:h12
" set guifont=DroidSansMono\ Nerd\ Font\ Mono:h12
" DUBAI-REGULAR.TTF:h12 
" DroidSansMono\ Nerd\ Font\ Mono:h12
" DejaVuSansMono\ NF\ Book:h12
" Dubai Regular (TrueType)    REG_SZ    DUBAI-REGULAR.TTF 
" consulta fontes
" reg query   HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /s

