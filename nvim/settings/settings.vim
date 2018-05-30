" fundamental settings
  set encoding=utf-8
  set fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
  set fileformat=unix
  set fileformats=unix,dos,mac
  set nobackup
  set nowritebackup
  set noswapfile
  filetype on
  filetype plugin on
  filetype plugin indent on
  syntax on

  " additional syntax highlighting
    au! BufRead,BufNewFile *.wsgi setfiletype python
    au! BufRead,BufNewFile *.sass setfiletype sass
    au! BufRead,BufNewFile *.scss setfiletype scss
    au! BufRead,BufNewFile *.haml setfiletype haml
    au! BufRead,BufNewFile *.less setfiletype less
    au! BufRead,BufNewFile *.conf setf dosini
    au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif

  " tab and indent settings
    au FileType cpp    setl ts=2 sw=2 sts=2
    au FileType ruby   setl ts=2 sw=2 sts=2
    au FileType yaml   setl ts=2 sw=2 sts=2
    au FileType html   setl ts=2 sw=2 sts=2
    au FileType jinja  setl ts=2 sw=2 sts=2
    au FileType lua    setl ts=2 sw=2 sts=2
    au FileType haml   setl ts=2 sw=2 sts=2
    au FileType sass   setl ts=2 sw=2 sts=2
    au FileType scss   setl ts=2 sw=2 sts=2
    au FileType make   setl ts=4 sw=4 sts=4 noet
    au FileType gitcommit setl spell

" useful settings
  set ruler
  set wrap
  set smartindent
  set expandtab         "tab to spaces
  set tabstop=2         "the width of a tab
  set shiftwidth=2      "the width for indent
  set smarttab " auto indent
  set autoindent " auto indent
  set foldenable
  set foldmethod=indent "folding by indent
  set foldlevel=99
  set ignorecase        "ignore the case when search texts
  set smartcase         "if searching text contains uppercase case will not be ignored
  set laststatus=2 " always show the status line
  set mouse=a " enable mouse use in all modes
  set novisualbell " disable visual bell

" lookings
  set number           "line number
  set wildmode=list:longest,full " use emacs-style tab completion when selecting files, etc
  set wildmenu " make tab completion for files/buffers act like bash
  set cursorline       "hilight the line of the cursor
  set cursorcolumn     "hilight the column of the cursor
  set nowrap           "no line wrapping
  set colorcolumn=80   "keep 80 columns
  set hlsearch " search highlighting
  set incsearch " incremental search
  " change the color of chars over the width of 80 into blue
  " (uncomment to enable it)
  "au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)

  " for Neovim 0.1.3 and 0.1.4
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  " or if you have Neovim >= 0.1.5
  if (has("termguicolors"))
    set termguicolors
  endif

  " Highlight current line
  au WinLeave * set nocursorline nocursorcolumn
  au WinEnter * set cursorline cursorcolumn
  set cursorline cursorcolumn

  " colorscheme
  set background=dark
  let g:enable_bold_font = 1
  let g:enable_italic_font = 1
  let g:one_allow_italics = 1 " Italic for comments
  try
    " colorscheme hybrid_reverse
    colo one
  catch
  endtry

" python
  " let g:python_version = matchstr(system("python --version | cut -f2 -d' '"), '^[0-9]')
  " if g:python_version =~ 3
      let g:python2_host_prog = "/usr/bin/python2"
  " else
      let g:python3_host_prog = "/usr/bin/python3"
  " endif

"" copy/paste/cut
  if has('unnamedplus')
    set clipboard=unnamed,unnamedplus
  endif

  noremap YY "+y<CR>
  noremap <leader>p "+gP<CR>
  noremap XX "+x<CR>

  if has('macunix')
    " pbcopy for OSX copy/paste
    vmap <C-x> :!pbcopy<CR>
    vmap <C-c> :w !pbcopy<CR><CR>
  endif
