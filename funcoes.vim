"=================
"==== funções ====
"=================

"*** limelight settings
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

nmap <leader>ll              :Limelight<cr>
nmap <leader>l               :Limelight!<cr>

"*** Goyo settings
function! s:goyo_enter()
    set noshowmode
    set noshowcmd
    set nocursorline
    " CocDisable
    Limelight
endfunction

function! s:goyo_leave()
    set showmode
    set showcmd
    set cursorline
    " CocEnable
    Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

"*** Substituição
function ReplaceAll(rtype)
    if a:rtype == 'ask'
      let a = input('Type a word: ')
    else
      let a = expand('<cword>')
    endif

    if !empty(a)
      let b = input('Change "' . a . '" by: ')
      if !empty(b)
        let l = line('.')
          if a:rtype == 'all' || a:rtype == 'ask'
            execute '%s/' . a . '/' . b . '/g'
          elseif a:rtype == 'line'
            execute 's/' . a . '/' . b . '/g'
          endif
          execute l
        endif
    endif
endfunction

nnoremap <c-r>a :call ReplaceAll('all')<cr>
nnoremap <c-r>l :call ReplaceAll('line')<cr>
nnoremap <c-r>w :call ReplaceAll('ask')<cr>
" echom 'olá mundo!'
" a:    - argument da function
" rtype - replace type

" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

nmap  <leader><leader>  :call TrimWhiteSpace()<CR>
" nmap! <leader><leader>   :call TrimWhiteSpace()<CR>

" Removes trailing spaces before saving
autocmd BufWritePre * :%s/\s\+$//e

" por default desabilitar exibir indentLine
" let g:vim_json_syntax_conceal = 1
let indentLine_enabled = 0

"*** Terminal no NVIM
" tnoremap <Esc> <C-\><C-t>
" au BufEnter * if &buftype == 'bash' | :startinsert | endif
"
" function! Terminal()
"   " let terminal = bufname('bash')
"   let terminal = bufname('powershell')
"   if terminal == ''
"     below terminal ++rows=5
"     below split term://bash
"     " below split term://zsh
"    " comentar  bel split term://powershell
"     resize 10
"   else
"     let bnr = bufnr(terminal)
"     exec ':bwipe! ' bnr
"   endif
"   setlocal nobuflisted
" endfunction
"
" nnoremap <c-t> :call Terminal()<CR>
"
"  " use alt+hjkl para mover entre split/vsplit paineis
" tnoremap <A-h> <C-\><C-n><C-w>h
" tnoremap <A-j> <C-\><C-n><C-w>j
" tnoremap <A-k> <C-\><C-n><C-w>k
" tnoremap <A-l> <C-\><C-n><C-w>l
" nnoremap <A-h> <C-w>h
" nnoremap <A-j> <C-w>j
" nnoremap <A-k> <C-w>k
" nnoremap <A-l> <C-w>l

" ======= versão p/ win
" function Terminal()
"   let terminal = bufname('powershell')
"   if terminal == ''
"     below terminal ++rows=5
"   else
"     let bnr = bufnr(terminal)
"     exec ':bwipe! ' bnr
"   endif
" endfunction
"
" nnoremap <c-t> :call Terminal()<CR>
" autocmd TerminalOpen * if &buftype == 'terminal' | setlocal nobuflisted | endif
"
"
"
"*** selec. tudo da linha p/ (baixo / cima) no modo visual
"*** não precisa do atalho, basta entrar no modo visual + gg (cima) ou G(baixo)
" vmap <leader>k          <esc>$vgg1
" vmap <leader>j          <esc>0vG$
