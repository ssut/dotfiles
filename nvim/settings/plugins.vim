" ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" deoplete
let g:deoplete#enable_at_startup = 1

" vim-go
let g:go_fmt_command = "goimports"
let g:go_metalinter_enabled = ['vet', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"
let g:deoplete#sources#go#use_cache = 1
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
" let g:ale_linters = {'go': ['gometalinter']}

" emmet
let g:user_emmet_leader_key = ',z'

" indentLine
let g:indentLine_color_gui = "#504945"

" Multi_cursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_key='<c-n>'
let g:multi_cursor_next_key='<tab>'
let g:multi_cursor_prev_key='b'
let g:multi_cursor_skip_key='x'
let g:multi_cursor_quit_key='q'

" Neoterm
let g:neoterm_size=20
let g:neoterm_repl_command= 'zsh'
let g:neoterm_position = 'horizontal'
" toogle the terminal
" kills the current job (send a <c-c>)
nnoremap <silent> tc :call neoterm#kill()<cr>

" Ale
let g:ale_enabled = 1
let g:ale_lint_delay = 100
let g:ale_lint_on_enter = 1
let g:ale_lint_on_text_changed = 1
let g:ale_set_highlights = 1
let g:ale_statusline_format = ['%d error(s)', '%d warning(s)', 'OK']
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

