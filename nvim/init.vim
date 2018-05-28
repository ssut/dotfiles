function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
call plug#begin('~/.asdf/nvim/plugged')
" looking
  Plug 'mhinz/vim-startify' " The fancy start screen for Vim
  Plug 'Yggdroot/indentLine' " A vim plugin to display the indention levels with thin vertical lines
  Plug 'ryanoasis/vim-devicons' " Adds file type glyphs/icons to Vim plugins
  Plug 'vim-airline/vim-airline' " airline
  Plug 'vim-airline/vim-airline-themes' " airline themes
  Plug 'airblade/vim-gitgutter' " gitgutter for Vim
  Plug 'ntpeters/vim-better-whitespace' " Better whitespace highlighting for Vim
  Plug 'flazz/vim-colorschemes' " colorschemes
  Plug 'rakr/vim-one' " One
  Plug 'rakr/vim-two-firewatch' " Two firewatch
  Plug 'zanglg/nova.vim' " Nova
  Plug 'kristijanhusak/vim-hybrid-material' " Hybrid Material
  Plug 'NLKNguyen/papercolor-theme' " PaperColor

" completion/templating
  Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') } " Autocompletion
  Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair
  Plug 'ervandew/supertab' " Perform all your vim insert mode completions with Tab
  Plug 'tpope/vim-endwise' " wisely add end in ruby, endfunction/endif/more in vim script, etc
  Plug 'scrooloose/nerdcommenter' " Vim plugin for intensely orgasmic commenting
  Plug 'SirVer/ultisnips' " Snippets
  Plug 'honza/vim-snippets' " Snippets
  Plug 'editorconfig/editorconfig-vim' " EditirConfig plugin for Vim
  Plug 'vim-scripts/tComment' " An extensible & universal comment plugin that also handles embedded filetypes

" command extention
  Plug 'tpope/vim-surround' " quoting/parenthesizing made simple
  Plug 'junegunn/vim-easy-align' " A simple, easy-to-use Vim alignment plugin
  Plug 'terryma/vim-multiple-cursors' " True Sublime Text style multiple selections for Vim
  Plug 'tpope/vim-fugitive' " a Git wrapper so awesome, it should be illegal
  Plug 'junegunn/fzf' " A command-line fuzzy finder written in Go

" navigation
  Plug 'scrooloose/nerdtree' " NERDTree
  Plug 'ctrlpvim/ctrlp.vim' " Fuzzy file, buffer, mru, tag, etc finder
  Plug 'majutsushi/tagbar' " Vim plugin that displays tags in a window, ordered by scope
  Plug 'eugen0329/vim-esearch' " Perform search in files easily

" utils
  Plug 'w0rp/ale' " Asynchronous Lint Engine
  Plug 'sjl/gundo.vim' " visualize your Vim undo tree
  Plug 'janko-m/vim-test' " A Vim wrapper for running tests on different granularities
  Plug 'mklabs/split-term.vim'

" syntax highlighting
  Plug 'tmux-plugins/vim-tmux'
  Plug 'slim-template/vim-slim'
  Plug 'ekalinin/Dockerfile.vim'
  Plug 'plasticboy/vim-markdown'
  Plug 'cespare/vim-toml'
  Plug 'stephpy/vim-yaml'
  Plug 'kchmck/vim-coffee-script'
  Plug 'tangledhelix/vim-octopress'
  Plug 'cakebaker/scss-syntax.vim'
  Plug 'vim-scripts/groovy.vim'
  Plug 'elzr/vim-json'
  Plug 'othree/html5.vim'
  Plug 'lepture/vim-jinja'

" misc
  Plug 'junegunn/vim-github-dashboard' " Browse GitHub events (user dashboard, user/repo activity) in Vim

" Go
  Plug 'fatih/vim-go'
  Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.asdf/nvim/plugged/gocode/nvim/symlink.sh' }
  Plug 'zchee/deoplete-go', { 'do': 'make' }
  Plug 'sebdah/vim-delve'

" Python
  Plug 'zchee/deoplete-jedi'

" ECMAScript 6
  Plug 'isRuslan/vim-es6'

" HTML/CSS/JavaScript
  Plug 'mattn/emmet-vim'
  Plug 'pangloss/vim-javascript'
  Plug 'posva/vim-vue' " vuejs
  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" Scala
  Plug 'ensime/ensime-vim', { 'do': function('DoRemote') }
  Plug 'derekwyatt/vim-scala'

call plug#end()

runtime settings/settings.vim
runtime settings/keymaps.vim
runtime settings/airline.vim
runtime settings/plugins.vim
