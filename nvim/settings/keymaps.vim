" space key to use the map key
let mapleader=" "

" alias :W to :w
cnoreabbrev W w
" alias :Q to :qa
cnoreabbrev Q qa

" <c-v> => for pasting
imap <c-v> <esc>"+pa
" ,, => escape to normal mode
imap ,, <Esc>
tmap ,, <Esc>
" use ctrl+{h,j,k,l} to switch between different windows
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l

" NERDTree
nmap <leader>n :NERDTree<cr>
