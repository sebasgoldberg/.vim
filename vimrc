execute pathogen#infect()

" Agregado
set number
set autoindent
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

au BufRead,BufNewFile *.twig set filetype=htmljinja

:map <F6> :tabp<CR>
:map <F7> :tabn<CR>

" Caracteres especiales del portugues
:map ~c iç
:map ~C iÇ
:map ~a iã
:map ~o iõ

" Django traducciones
:map _" F"i_(<Esc>2f"a)<Esc>2F"
:map _' F'i_(<Esc>2f'a)<Esc>2F'
:map _l" F"iugettext_lazy(<Esc>2f"a)<Esc>2F"
:map _l' F'iugettext_lazy(<Esc>2f'a)<Esc>2F'
:map ts }}k^f"a
:map t1 i{% trans "<Esc>
:map t2 a" %}<Esc>
:map tr k^f""qyf"j^f"D"qp

filetype plugin on

let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

let g:airline_theme='wombat'

let g:syntastic_javascript_checkers=['eslint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

