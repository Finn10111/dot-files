""""""""""""""""""""""""""""""""""""""""""
" Finn Christiansen's .vimrc configuration
" based on Allan MacGregor's .vimrc config:
" https://github.com/amacgregor/dot-files
""""""""""""""""""""""""""""""""""""""""""

" Install Vundle:
"  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
" Install YouCompleteMe:
" cd ~/.vim/bundle/YouCompleteMe
" python3 install.py
" or
" python3 install.py --all
"
" Install Nerd FOnts (needed for devicons)
" wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Hack.zip
" unzip Hack.zip
" move to /usr/local/share/fonts
" fc-update
" set font in terminal
"
" Install php cs fixer:
" https://github.com/FriendsOfPHP/PHP-CS-Fixer
" or via your package manager

set encoding=utf8

"""" START Vundle Configuration

" Disable file type for vundle
filetype off                  " required

" Support GitHub and GitLab
let github = 'https://github.com/'
let gitlab = 'https://gitlab.com/'
let mapleader=","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin github.'gmarik/Vundle.vim'

" Utility
Plugin github.'scrooloose/nerdtree'
Plugin github.'majutsushi/tagbar'
Plugin github.'ervandew/supertab'
Plugin github.'BufOnly.vim'
Plugin github.'wesQ3/vim-windowswap'
Plugin github.'SirVer/ultisnips'
Plugin github.'junegunn/fzf.vim'
Plugin github.'junegunn/fzf'
Plugin github.'godlygeek/tabular'
Plugin github.'ctrlpvim/ctrlp.vim'
Plugin github.'benmills/vimux'
Plugin github.'jeetsukumaran/vim-buffergator'
Plugin github.'gilsondev/searchtasks.vim'
Plugin github.'tpope/vim-dispatch'
Plugin github.'jceb/vim-orgmode'
Plugin github.'tpope/vim-speeddating'
Plugin github.'calorie/vim-typing-sound'
Plugin github.'vim-scripts/mru.vim'

" Generic Programming Support
" Plugin github.'jakedouglas/exuberant-ctags'
Plugin github.'universal-ctags/ctags'
Plugin github.'honza/vim-snippets'
"Plugin github.'Townk/vim-autoclose'
Plugin github.'tomtom/tcomment_vim'
Plugin github.'tobyS/vmustache'
Plugin github.'janko-m/vim-test'
Plugin github.'maksimr/vim-jsbeautify'
Plugin github.'vim-syntastic/syntastic'
Plugin github.'neomake/neomake'
Plugin github.'w0rp/ale'
Plugin github.'ludovicchabant/vim-gutentags'
Plugin github.'vim-vdebug/vdebug'
Plugin github.'mustache/vim-mustache-handlebars'


" Markdown / Writting
Plugin github.'reedes/vim-pencil'
Plugin github.'tpope/vim-markdown'
Plugin github.'jtratner/vim-flavored-markdown'
Plugin github.'LanguageTool'

" Git Support
Plugin github.'airblade/vim-gitgutter'
Plugin github.'kablamo/vim-git-log'
Plugin github.'gregsexton/gitv'
Plugin github.'tpope/vim-fugitive'
"Plugin github.'jaxbot/github-issues.vim'

" PHP Support
" cd .vim/bundle/phpcd.vim/ && composer install
"Plugin github.'lvht/phpcd.vim'
Plugin github.'shawncplus/phpcomplete.vim'
Plugin github.'tobyS/pdv'
Plugin github.'stephpy/vim-php-cs-fixer'
Plugin github.'Valloric/YouCompleteMe'

" Python support
Plugin github.'nvie/vim-flake8'

" Theme / Interface
Plugin github.'AnsiEsc.vim'
Plugin github.'ryanoasis/vim-devicons'
Plugin github.'vim-airline/vim-airline'
Plugin github.'vim-airline/vim-airline-themes'
Plugin github.'sjl/badwolf'
Plugin github.'tomasr/molokai'
Plugin github.'morhetz/gruvbox'
Plugin github.'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin github.'junegunn/limelight.vim'
Plugin github.'mkarmona/colorsbox'
Plugin github.'romainl/Apprentice'
Plugin github.'Lokaltog/vim-distinguished'
Plugin github.'chriskempson/base16-vim'
Plugin github.'w0ng/vim-hybrid'
Plugin github.'AlessandroYorba/Sierra'
Plugin github.'daylerees/colour-schemes'
Plugin github.'effkay/argonaut.vim'
Plugin github.'ajh17/Spacegray.vim'
Plugin github.'atelierbram/Base2Tone-vim'
Plugin github.'colepeters/spacemacs-theme.vim'
Plugin github.'dylanaraps/wal.vim'
Plugin github.'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

" Twig
Plugin github.'nelsyeung/twig.vim'


" color scheme
Plugin gitlab.'/yorickpeterse/happy_hacking.vim'

" Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

call vundle#end()            " required
filetype plugin indent on    " required
"""" END Vundle Configuration

"""""""""""""""""""""""""""""""""""""
" Configuration Section
"""""""""""""""""""""""""""""""""""""
set nowrap

" OSX stupid backspace fix
set backspace=indent,eol,start

" Show linenumbers
set number

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
set laststatus=2

" Enable Elite mode, No ARRRROWWS!!!!
let g:elite_mode=0

" Devicons configuration
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''

" Enable highlighting of the current line
set cursorline

" Theme and Styling
syntax on
set t_Co=256

" if (has("termguicolors"))
"   set termguicolors
" endif

let g:vim_typing_sound = 0                  " sound off
let g:vim_typing_sound_command = 'afplay' " or 'afplay'
let g:vim_typing_sound_path = '/Volumes/Workspace/Utilities/Sound/9744__horn__typewriter.wav'            " set your sound path

"let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme happy_hacking
let g:challenger_deep_termcolors = 256

let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1

" Syntastic Configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_enable_elixir_checker = 1
" let g:syntastic_elixir_checkers = ["elixir"]

" Neomake settings
autocmd! BufWritePost * Neomake
let g:neomake_elixir_enabled_makers = ['mix', 'credo', 'dogma']

" Vim-PDV Configuration
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"

" Markdown Syntax Support
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" Vim-Alchemist Configuration
let g:alchemist#elixir_erlang_src = "/Users/amacgregor/Projects/Github/alchemist-source"
let g:alchemist_tag_disable = 1

" Vim-Supertab Configuration
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" Settings for Writting
let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'
let g:languagetool_jar  = '/opt/languagetool/languagetool-commandline.jar'

" Vim-pencil Configuration
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

" Vim-UtilSnips Configuration
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical" " If you want :UltiSnipsEdit to split your window.

" Vim-Test Configuration
let test#strategy = "vimux"

function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction

" Close popup by <Space>.
""inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

"/ vim-mix-format
" let g:mix_format_on_save = 1

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Fzf Configuration
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

"""""""""""""""""""""""""""""""""""""
" Mappings configurationn
"""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>

" Omnicomplete Better Nav
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Mapping selecting Mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" CTRL-P
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Vim-Test Mappings
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Vim-PDV Mappings
autocmd FileType php inoremap <C-p> <ESC>:call pdv#DocumentWithSnip()<CR>i
autocmd FileType php nnoremap <C-p> :call pdv#DocumentWithSnip()<CR>
" autocmd FileType php setlocal omnifunc=phpcd#CompletePHP
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
    nnoremap <Up>    :resize +2<CR>
    nnoremap <Down>  :resize -2<CR>
    nnoremap <Left>  :vertical resize +2<CR>
    nnoremap <Right> :vertical resize -2<CR>
endif

map <silent> <LocalLeader>ws :highlight clear ExtraWhitespace<CR>

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

" Vim-Alchemist Mappings
autocmd FileType elixir nnoremap <buffer> <leader>h :call alchemist#exdoc()<CR>
autocmd FileType elixir nnoremap <buffer> <leader>d :call alchemist#exdef()<CR>

let g:ycm_key_invoke_completion = "<C-Space>"
let g:ycm_collect_identifiers_from_tags_files = 1
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
set completeopt=longest,menuone
imap <c-c> <c-x><c-o>


" ALE fixers
let b:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'python': ['autopep8'],
\   'php': ['php_cs_fixer'],
\}

let g:php_cs_fixer_rules = "@PSR2"
let g:gitgutter_max_signs = 10240
let g:ale_lint_on_text_changed = 'never'
