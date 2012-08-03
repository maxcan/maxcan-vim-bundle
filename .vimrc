call pathogen#infect()

set wildignore=cabal-dev,dist,*.o
inoremap jj <Esc>
cnoremap jj <C-c>
"let $VIMRUNTIME="/Users/mxcantor/.vim/vim71/"
set statusline=%<%f\ B%n\ %y%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set showbreak=\ \ \ \ \ \ \ \ 
set relativenumber
map <Leader>m :wa\|:make!<CR>
map <Leader>M :wa\|:make<CR>
map <F1> 
imap <F1> 
map <Home> :w\|:bp<CR>
map <End> :w\|:bn<CR>
map <Leader>vr :vertical resize  
map <Leader><Left> <Left>
map <Leader><Right> <Right>
map <Leader><Down> <Down>
map <Leader><Up> <Up>
map <D-Left> <Left>
map <D-Right> <Right>
map <D-Down> <Down>
map <D-Up> <Up>
"----  Haskell stuf PROJECT 
command! Hasktags !find Com -name "*.hs" | xargs hasktags -c
map <Leader>8 o--------  --------F i
abbr impt import          
abbr imqu import qualified
abbr imdt import qualified Data.Text                   as T
abbr imbs import qualified Data.ByteString             as B
abbr imbl import qualified Data.ByteString.Lazy        as BL
abbr imbs import qualified Data.ByteString.Char8       as C8
abbr imbl import qualified Data.ByteString.Char8.Lazy  as C8L
abbr imcc import qualified Data.ISO3166_CountryCodes   as CC
abbr imdl import qualified Data.List                   as DL
abbr imds import qualified Data.Set                    as DS
abbr imdy import qualified Data.Maybe                  as DY
abbr imdm import qualified Data.Map                    as DM
abbr imde import qualified Data.Either                 as DE
abbr rrt redirect RedirectTemporary
imap <Leader>oc -- _OLDCODE 0>>>>j0i
map <Leader>oc 00I-- _OLDCODE 0>>>>j
abbr drv deriving (Show, Eq, Ord, Data, Typeable, Read)
"swap tuples:
"map <Leader>st F(wdwf)i, pF(ldf,
"----  END EKC PROJECT 
set guioptions=g
"let &cpo=s:cpo_save
color ir_black
set autoindent
set ignorecase
set hlsearch
set incsearch
set autowrite
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set backspace=indent,eol,start


runtime autoload/swap.vim
runtime autoload/showmarks.vim

"Window navigation

"hsenv stuff:
let $PATH = '.hsenv/bin:.hsenv_raise-launch/bin' . ':' . $PATH
" On linux, we need the <M-.. on OSX, its <D-..  just keep both. its easier
imap <M-Left> <Left>
imap <M-Right> <Right>
imap <M-Down> <Down>
imap <M-Up> <Up>
map <M-Left> <Left>
map <M-Right> <Right>
map <M-Down> <Down>
map <M-Up> <Up>
imap <D-Up>    <Up>
imap <D-Down>  <Down>
imap <D-Right> <Right>
imap <D-Left>  <Left>
map <D-Up> <Up>
map <D-Down> <Down>
map <D-Right> <Right>
map <D-Left> <Left>

map <Leader>w :set nowrap<CR>
map <Leader>W :set wrap<CR>
"HG (mercurial maps):
map _hc :!hg commit -m '' %<Left><Left><Left>
map <Leader>ha :!hg add %
map <Leader>hd :!hg diff %
map <Leader>hD :!hg cat % > /tmp/vimdiff.help.%:e \| mvim -n -d % /tmp/vimdiff.help.%:e <CR>
map <Leader>hs :!hg status <CR>

"todo list
map <Leader>sfjs :set filetype=javascript<CR>
map <Leader>vtd :vimgrep TODO **/*.%:e<CR>
map <Leader>fi :set foldmethod=indent<CR>
map <Leader>v_ :vimgrep " _[A-Z]" **/*.%:e<CR>
map <Leader>vg :vimgrep // **/*.%:e<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
map <Leader>lg :lvimgrep //" **/*.%:e<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
imap <Leader>B <Esc>:buf 
imap <Leader>cl  console.log('');  // _DEBUG<Esc>F'i
map <Leader>B :buf 
"let $BASH_ENV="/Users/mxcantor/.profile"
"let $PATH="/opt/local/bin:/opt/local/sbin:/Users/mxcantor/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin"
au BufRead *.julius set filetype=javascript
au Bufenter *.julius set filetype=javascript

  " configure browser for haskell_doc.vim
  let g:haddock_browser = "/Applications/Safari.app/Contents/MacOS/Safari"
  

filetype plugin indent on
syntax on

" neco stuff
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

