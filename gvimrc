"-----------------------------------------------------------------------------
" options
"-----------------------------------------------------------------------------
set nocompatible
set backup
set nowrap
set history=1000
set undolevels=1000
filetype plugin on
" directory for swap files
set directory=$HOME
" russian language fix
set langmap=�`,�q,�w,�e,�r,�t,�y,�u,�i,�o,�p,�a,�s,�d,�f,�g,�h,�j,�k,�l,�',�z,�x,�c,�v,�b,�n,�m,�\\,,�.,�~,�Q,�W,�E,�R,�T,�Y,�U,�I,�O,�P,�A,�S,�D,�F,�G,�H,�J,�K,�L,�:,�\\",�Z,�X,�C,�V,�B,�N,�M,�<,�>
" one word symbol class
set iskeyword=@,48-57,_,192-255,\$
" encodings
set fileencodings=utf-8,windows-1251,iso-8859-15,koi8-r
" fileformat
"set fileformats=dos
" sessions
set sessionoptions=curdir,buffers,tabpages,folds,options,resize,globals,localoptions
"set noeol bin
" keep more context when scrolling off the end of a buffer
" indents
set cindent
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
                  "    shiftwidth, not tabstop
set nojoinspaces
set smartindent
set expandtab
set shiftwidth=2  " number of spaces to use for autoindenting

set softtabstop=2
set tabstop=2
set softtabstop=2
" search
set incsearch
set hlsearch
set showmatch
"set noignorecase
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
set noswapfile
" gui
syntax on
colors ir_black
if has("gui_gtk2")
  set guifont=Monaco\ 12
else
  set guifont=Monaco:h10
endif
" strings numeration
set number " always show line numbers
set guioptions-=T
set ch=1
set noguipty
set nostartofline
set whichwrap+=>
set whichwrap+=<
let c_comment_strings=1
set lazyredraw
set modeline
set scrolloff=3
set sidescrolloff=7
set sidescroll=1
"set guifont=Courier\ New:h12:cRUSSIAN
set lines=50
set columns=156
set confirm
set shortmess=fimnrxoOtTI
set ruler
" ringbell
set novisualbell
set t_vb=
" show unfinished commands in statusbar
set showcmd
" status line
set statusline=%{expand('%:t')}       "tail of the filename
"display a warning if fileformat isnt unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}
set statusline+=%*
"display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*
set statusline+=%h      "help file flag
set statusline+=%y      "filetype
set statusline+=%r      "read only flag
set statusline+=%m      "modified flag
"display a warning if &et is wrong, or we have mixed-indenting
"set statusline+=%#error#
"set statusline+=%{StatuslineTabWarning()}
"set statusline+=%*
"set statusline+=%{StatuslineTrailingSpaceWarning()}
"set statusline+=%{StatuslineLongLineWarning()}
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"display a warning if &paste is set
set statusline+=%#error#
set statusline+=%{&paste?'[paste]':''}
set statusline+=%*
set statusline+=%=      "left/right separator
"set statusline+=%{StatuslineCurrentHighlight()}\ \ "current highlight
set statusline+=Col:%03c%*\     "cursor column
set statusline+=Ln:%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2
set laststatus=2
set cursorline
"norm \[i
set showmode
set noerrorbells
set cpoptions+=$
"set nocp " option for cppomnicomplete
set list
"set listchars=trail:.
set listchars=tab:>.,trail:.,extends:#,nbsp:.
" allow to use backspace instead of "x"
set backspace=indent,eol,start whichwrap+=<,>,[,]
" do not abandon buffer when it is unloaded
set hidden
" mouse
set mousemodel=popup
set mouse=a
set mousehide
" Fix <Enter> for comment
set fo+=cr
" buffers for autocomplete
set complete=""
set complete+=.
set complete+=k
set complete+=b
set complete+=t

set wildmenu
set wcm=<Tab>
"dont fold by default

"dont fold by default
set nofoldenable
" tags
set tags+=tags
set tags+=tags2
" runtimepath for vimdata
set runtimepath+=~/.vimdata
" vim-ruby
if has("unix")
  set runtimepath+=~/.vim/vim-ruby
  set runtimepath+=~/.vim/vim-rails
  set runtimepath+=~/.vim/vim-fuzzyfinder
  "set runtimepath+=~/.vim/vim-ruby-debugger/vim
else
  set runtimepath+=~/vimfiles/vim-ruby
  set runtimepath+=~/vimfiles/vim-rails
  set runtimepath+=~/vimfiles/vim-fuzzyfinder
  "set runtimepath+=~/vimfiles/vim-ruby-debugger/vim
endif
"-----------------------------------------------------------------------------
" hotkeys
"-----------------------------------------------------------------------------
vmap < <gv
vmap > >gv

" CTRL+x is Cut
vmap <c-x> "+x
" CTRL+c is Copy
vmap <c-c> "+y
" CTRL+v is Paste
nmap <c-v> "+gP
vmap <c-v> "+gP
imap <c-v> <space><esc>"+gP<del>i
cmap <c-v> <c-R>+
" movement
vmap <c-k> 10k
nmap <c-k> 10k
vmap <c-j> 10j
nmap <c-j> 10j
" UP
nmap k gk
vmap k gk
imap <c-k> <up>
cmap <c-k> <up>
" DOWN
nmap j gj
vmap j gj
imap <c-j> <down>
cmap <c-j> <down>
" LEFT
nmap h <left>
vmap h <left>
imap <c-h> <left>
cmap <c-h> <left>
" RIGHT
nmap l <right>
vmap l <right>
imap <c-l> <right>
cmap <c-l> <right>
" ESC button
imap ii <Esc><right>
"imap <c-d> <esc>ddI
"imap <c-a> <esc>A
"imap <c-o> <esc>O
"imap <c-s> <esc>I
"cmap <c-s> <home>
" arrows
nmap <down> gj
nmap <up> gk
vmap <down> gj
vmap <up> gk
imap <down> <c-O>gj
imap <up> <c-O>gk
" save position while page up/down
nmap <pageup> <c-U><c-U>
nmap <pagedown> <c-D><c-D>
imap <pageup> <c-O><c-U><c-O><c-U>
imap <pagedown> <c-O><c-D><c-O><c-D>
vmap <pageup> <c-U><c-U>
vmap <pagedown> <c-D><c-D>
" CamelCase movement
map <silent> w <plug>CamelCaseMotion_w
map <silent> b <plug>CamelCaseMotion_b
map <silent> e <plug>CamelCaseMotion_e
" move with control
"vmap <c-up> 10k
"nmap <c-up> 10k
"imap <c-up> <esc>10ki
"vmap <c-down> 10j
"nmap <c-down> 10j
"imap <c-down> <esc>10ji
" Bubble single lines
nmap <c-up> [e
nmap <c-down> ]e
" Bubble multiple lines
vmap <c-up> [egv
vmap <c-down> ]egv
" move with shift
imap <s-k4> <esc>Bi
vmap <s-k4> B
nmap <s-k4> B
imap <s-k6> <esc>Ea
vmap <s-k6> E
nmap <s-k6> E
map <s-k8> <pageup>
map <s-k2> <pagedown>
" CTRL-A is Select all
nmap <c-A> <esc>a<esc>ggVG
" clear the search buffer when hitting return
nmap <cr> :nohlsearch<cr>/<BS>
nmap <kEnter> :nohlsearch<cr>/<BS>
" comments
"vmap <c-a> di<?/ */ ?><left><left><left><left><left><esc>Pi<right>
" translate
"vmap <c-t> di<?=translate(''<esc>P<right><right><right><right><right>
" autocomplete
imap <tab> <c-r>=InsertTabWordWrapper()<cr>
imap <c-tab> <c-r>=InsertTabLineWrapper()<cr>
imap <s-tab> <c-n>
" snippet
"imap <silent> ; <c-r>=InsertSnippetWrapper()<cr>
"imap <a-;> <c-r>=ShowAvailableSnips()<cr>
"imap <c-;> <c-r>=ShowAvailableSnips()<cr>
"imap <c-space> <c-r>=InsertSnippetWrapper()<cr>
"ino <silent> <c-space> <c-r>=TriggerSnippet()<cr>
"ino <silent> <c-space> <c-r>=TriggerSnippet()<cr>
"snor <silent> <c-space> <esc>i<right><c-r>=TriggerSnippet()<cr>
"ino <silent> <s-space> <c-r>=BackwardsSnippet()<cr>
"snor <silent> <s-space> <esc>i<right><c-r>=BackwardsSnippet()<cr>
"ino <silent> <c-s-space> <c-r>=ShowAvailableSnips()<cr>
" select text inside of block
"imap <c-v> <esc>v<up><end>o%<down><home>o
" quit
nmap <c-q> :q!<cr>
vmap <c-q> <esc>:q!<cr>i
imap <c-q> <esc>:q!<cr>i
" save
nmap <c-s> :w<cr>
vmap <c-s> <esc>:w<cr>gv
imap <c-s> <esc>:w<cr>a
"imap <c-s> <esc>:w<cr>i
" FuzzyFinder
"nmap <silent> <leader>t :CommandT<cr>
"nmap <silent> <leader>r :CommandTFlush<cr>
nmap <silent> <leader>t :FuzzyFinderTextMate<cr>
"nmap <silent> <leader>b :FuzzyFinderBuffer<cr>
"nnoremap <silent> <c-b> :FuzzyFinderBookmark<cr>
"nnoremap <silent> <leader>b :FuzzyFinderAddBookmark<cr><cr>
"nmap <silent> <leader>f :FuzzyFinderFile<cr>
"nmap <silent> <leader>d :FuzzyFinderDir<cr>
"nmap <silent> <leader>r :FuzzyFinderRemoveCache<cr>
"nmap <silent> <leader>d :FuzzyFinderDir<cr>
nmap <silent> <leader>r :call RemoveFuzzyCache()<cr>
" tabs
"nnoremap <c-T> :tabnew<cr>
"inoremap <c-T> <c-O>:tabnew<cr>
"vnoremap <c-T> <esc>:tabnew<cr>
nmap <silent><a-left> :call TabJump('left')<cr>
imap <silent><a-left> <c-O>:call TabJump('left')<cr>
vmap <silent><a-left> <esc>:call TabJump('left')<cr>
nmap <silent><a-right> :call TabJump('right')<cr>
imap <silent><a-right> <c-O>:call TabJump('right')<cr>
vmap <silent><a-right> <esc>:call TabJump('right')<cr>
nmap <a-up> :tabfirst<cr>
imap <a-up> <c-O>:tabfirst<cr>
vmap <a-up> <esc>:tabfirst<cr>
nmap <a-down> :tablast<cr>
imap <a-down> <c-O>:tablast<cr>
vmap <a-down> <esc>:tablast<cr>
nmap <a-S-up> :tabmove 0<cr>
imap <a-S-up> <c-O>:tabmove 0<cr>
vmap <a-S-up> <esc>:tabmove 0<cr>
nmap <a-S-down> :tabmove<cr>
imap <a-S-down> <c-O>:tabmove<cr>
vmap <a-S-down> <esc>:tabmove<cr>
nmap <silent><a-S-left> :call TabMove('left')<cr>
imap <silent><a-S-left> <c-O>:call TabMove('left')<cr>
vmap <silent><a-S-left> <esc>:call TabMove('left')<cr>
nmap <silent><a-S-right> :call TabMove('right')<cr>
imap <silent><a-S-right> <c-O>:call TabMove('right')<cr>
vmap <silent><a-S-right> <esc>:call TabMove('right')<cr>
" wrap text into tag
vmap <silent>,w <esc>:call VisualTagWrap()<cr>
" search selected text
vmap <silent>* <esc>:call VisualSearch('/')<cr>/<c-R>/<cr>
vmap <silent># <esc>:call VisualSearch('?')<cr>?<c-R>/<cr>
" Trailing Spaces
nmap <silent>,t :call RemoveTrailingSpaces()<cr>:echo 'trailing spaces have been removed'<cr>
" make
"vmap <c-z> <esc>:w!<cr>:make<cr>
"nmap <c-z> :w!<cr>:make<cr>
"imap <c-z> <esc>:w!<cr>:make<cr>
" run
vmap <leader>Z <esc>:w!<cr>:!./%<cr>
nmap <leader>Z :w!<cr>:!./%<cr>
imap <leader>Z <esc>:w!<cr>:!./%<cr>
vmap <leader>z <esc>:w!<cr>:!%<cr>
nmap <leader>z :w!<cr>:!%<cr>
imap <leader>z <esc>:w!<cr>:!%<cr>
" Save
"nnoremap <f2> :w!<cr>
"inoremap <f2> <c-O>:w!<cr>
"vnoremap <f2> <esc>:w!<cr>
" Save all
"nnoremap <c-F2> :wall!<cr>
"inoremap <c-F2> <c-O>:wall!<cr>
"vnoremap <c-F2> <esc>:wall!<cr>
" NerdTree
map <silent> <f9> :NERDTreeToggle<cr>
map <silent> <c-f9> :NERDTreeToggle %<cr>
" Project
map <silent> <c-F3> <plug>ToggleProject
" Wrap
nnoremap <f4> :setlocal wrap! wrap?<cr>
inoremap <f4> <c-O>:setlocal wrap! wrap?<cr>
vnoremap <f4> <esc>:setlocal wrap! wrap?<cr>
" bufexplorer
"map <silent> <c-F5> :BufExplorer<cr>
" Subversion
nnoremap <f5> :emenu File.Subversion.<tab>
inoremap <f5> <c-O>:emenu File.Subversion.<tab>
vnoremap <f5> <esc>:emenu File.Subversion.<tab>
" font
nnoremap <c-f5> :emenu File.Font.<tab>
inoremap <c-f5> <c-O>:emenu File.Font.<tab>
vnoremap <c-f5> <esc>:emenu File.Font.<tab>

" Encoding.Write
nnoremap <f6> :emenu File.Encoding.Write.<tab>
inoremap <f6> <c-O>:emenu File.Encoding.Write.<tab>
vnoremap <f6> <esc>:emenu File.Encoding.Write.<tab>
" Encoding.Read
nnoremap <f7> :emenu File.Encoding.Read.<tab>
inoremap <f7> <c-O>:emenu File.Encoding.Read.<tab>
vnoremap <f7> <esc>:emenu File.Encoding.Read.<tab>
" ToggleMatchParen
nnoremap <f8> :call ToggleMatchParen()<cr>
inoremap <f8> <c-O>:call ToggleMatchParen()<cr>
vnoremap <f8> <esc>:call ToggleMatchParen()<cr>
" Spelling
"nnoremap <f8> :emenu File.Spell.<tab>
"inoremap <f8> <c-O>:emenu File.Spell.<tab>
"vnoremap <f8> <esc>:emenu File.Spell.<tab>
" External program run
"nnoremap <f9> :emenu File.Preview.<tab>
"inoremap <f9> <c-O>:emenu File.Preview.<tab>
"vnoremap <f9> <esc>:emenu File.Preview.<tab>
" Tags
nnoremap <f11> :TlistToggle<cr>
inoremap <f11> <c-O>:TlistToggle<cr>
vnoremap <f11> <esc>:TlistToggle<cr>
nnoremap <f12> :emenu Tags.<tab>
inoremap <f12> <c-O>:emenu Tags.<tab>
vnoremap <f12> <esc>:emenu Tags.<tab>
" ruby debugger
"nnoremap <c-f11> :call EnableDebugger()<cr>
" vimrc edit
map ,v :vsp $MYGVIMRC<CR>
map ,V :source $MYGVIMRC<CR>
"  'Control + \' - Open a new tab and tag into the function/variable currently under cursor
imap {<cr> {<cr>}<Esc>O
"imap <? <?  ?><left><left><left>
imap <% <%  %><left><left><left>
"imap <?= <?= ?><left><left><left>
imap <%= <%= %><left><left><left>
"imap <?/ <<left><right>? /*

"imap /1 //-----------------------------------------------------------------------------
"imap /2 /1<cr> <cr><backspace><backspace><backspace>/1<up><end>
"imap /3 /2<down><cr><backspace><backspace><cr>/1<up><up><up><end>

map <s-k> :exec("help ".expand("<cword>"))<cr>
map <c-\> :tab split<cr>:exec("tag ".expand("<cword>"))<cr>
" 'Alt + \' - Open a vertical split and tag into the function/variable currently under cursor
"map <A-\> :vsplit<cr>:exec("tag ".expand("<cword>"))<cr><c-W>r
" NERDCommenter
map ,<space> <plug>NERDCommenterToggle
"-----------------------------------------------------------------------------
" menu
"-----------------------------------------------------------------------------
if !has("unix")
  anoremenu &File.&Font.&Monaco_10 :set guifont=Monaco:h10<cr>
  anoremenu &File.&Font.&Consolas_10 :set guifont=Consolas:h12:cRUSSIAN<cr>
  anoremenu &File.&Font.&Monaco_12 :set guifont=Monaco:h10<cr>
  anoremenu &File.&Font.&Monaco_12_russian :set guifont=Monaco:h12:cRUSSIAN<cr>
endif

anoremenu &File.&EOL.&unix :setlocal fileformat=unix<cr>
anoremenu &File.&EOL.&dos :setlocal fileformat=dos<cr>
anoremenu &File.&EOL.&mac :setlocal fileformat=mac<cr>

anoremenu &File.E&ncoding.&Write.&utf-8 :setlocal fileencoding=utf-8<cr>
anoremenu &File.E&ncoding.&Write.&windows-1251 :setlocal fileencoding=windows-1251<cr>
anoremenu &File.E&ncoding.&Write.&iso-8859-15 :setlocal fileencoding=iso-8859-15<cr>
anoremenu &File.E&ncoding.&Write.&koi8-r :setlocal fileencoding=koi8-r<cr>

anoremenu &File.E&ncoding.&Read.&utf-8 :edit ++enc=utf-8<cr>
anoremenu &File.E&ncoding.&Read.&windows-1251 :edit ++enc=windows-1251<cr>
anoremenu &File.E&ncoding.&Read.&iso-8859-15 :edit ++enc=iso-8859-15<cr>
anoremenu &File.E&ncoding.&Read.&koi8-r :edit ++enc=koi8-r<cr>

anoremenu &File.&Spell.&Combined :setlocal spell spelllang=ru,en<cr>
anoremenu &File.&Spell.&Russian :setlocal spell spelllang=ru<cr>
anoremenu &File.&Spell.&English :setlocal spell spelllang=en<cr>
anoremenu &File.&Spell.&Off :setlocal nospell spelllang=<cr>

anoremenu &File.&Preview.&Firefox :!firefox %<cr>
anoremenu &File.&Preview.&Opera :!opera %<cr>
anoremenu &File.&Preview.&Midori :!midori %<cr>

" tag list
anoremenu &Tags.&TagList :TlistToggle<cr>
anoremenu &Tags.&ctags :exec("!ctags -R --fields=+zitKSla --extra=+q --exclude=.svn --exclude=fckeditor --exclude=editor --exclude=ckeditor --exclude=ckfinder --exclude=suilib_packed.js --exclude=jquery-1.3.2.min.js --exclude=jquery.plugins.js --exclude=highslide.packed.js --exclude=sui.js --exclude=codemirror --exclude=jTweener.js --exclude=swfobject.js --exclude=community_map.packed.js --exclude=order_base.packed.js --exclude=special_header.packed.js --exclude=prototype-1.4.0.js --exclude=raphael-min.js  --exclude=frontend.js --exclude=packed.js .")<cr>
if has("unix")
  anoremenu &Tags.&rjstags :exec("!ruby ~/.vim/bin/rjstags/rjstags.rb .")<cr>
  anoremenu &Tags.&rjstags\ file :exec("!ruby ~/.vim/bin/rjstags/rjstags.rb %")<cr>
else
  anoremenu &Tags.&rjstags :exec("!ruby '".$HOME."//vimfiles//bin//rjstags//rjstags.rb' .")<cr>
  anoremenu &Tags.&rjstags\ file :exec("!ruby '".$HOME."//vimfiles//bin//rjstags//rjstags.rb' %")<cr>
endif
"-----------------------------------------------------------------------------
" autocommands
"-----------------------------------------------------------------------------
"nmap <LocalLeader>k :exec("!lynx -accept_all_cookies http://php.net/".expand("<cword>"))<cr>
"command! -nargs=0 RDocPreview call RDocRenderBufferToPreview()

"function! RDocRenderBufferToPreview()
"  let rdocoutput = "/tmp/vimrdoc/"
"  call system("rdoc " . bufname("%") . " --op " . rdocoutput)
"  call system("open -a Safari ". rdocoutput . "index.html")
"endfunction

autocmd VimEnter * call InitSubversion()

" backups
autocmd! bufwritepre * call BackupDir()
" reload vimrc
if has("unix")
  autocmd! bufwritepost ~/.vimrc source ~/.vimrc
  autocmd! bufwritepost ~/.gvimrc source ~/.gvimrc

  autocmd! bufwritepost ~/.vim/vimrc source ~/.vim/vimrc
  autocmd! bufwritepost ~/.vim/gvimrc source ~/.vim/gvimrc
else
  autocmd! bufwritepost ~/vimfiles/gvimrc source ~/vimfiles/gvimrc
  autocmd! bufwritepost ~/vimfiles/vimrc source ~/vimfiles/vimrc
  autocmd! bufwritepost $VIM/_gvimrc source $VIM/_gvimrc
  autocmd! bufwritepost $VIM/_vimrc source $VIM/_vimrc
endif

"au BufRead,BufNewFile *.scss set filetype=scss
"au BufNewFile,BufRead *.scss set filetype=css
au BufNewFile,BufRead *.json set filetype=javascript

au BufNewFile,BufRead *.ctp set filetype=phtml
au BufNewFile,BufRead *.php,*.phtml set dict+=~/.vimdata/php/keywords

au BufNewFile,BufRead *.rb map <s-k> :call TryRubyDoc()<cr>
"if has("unix")
  "au BufNewFile,BufRead *.rb map <f9> <esc>:w<cr>:!./%<cr>
"else
  "au BufNewFile,BufRead *.rb map <f9> <esc>:w<cr>:!%<cr>
"endif
au BufNewFile,BufRead *.rb set makeprg=ruby\ -c\ %
"au BufNewFile,BufRead *.rb nnoremap <c-f12> :Rtags<cr>
au BufNewFile,BufRead *.rb nnoremap <c-f12> :!rake mactag<cr>

" Run Ruby unit tests with rT (for all) or rt (only test under cursor) in command mode
autocmd BufRead,BufNewFile *.rb :nmap rt :<C-U>w<CR>:!rake test:units TEST=%<CR>
autocmd BufRead,BufNewFile *.rb :nmap rT :<C-U>w<CR>:!rake test<CR>

au BufNewFile,BufRead *.cpp map <c-f12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>
au BufNewFile,BufRead *.cpp,*.h set tags+=~/.vimdata/c++/unix/std/tags

au BufNewFile,BufRead *.ass,*.ssa set filetype=ssa
"-----------------------------------------------------------------------------
" omni completion
"-----------------------------------------------------------------------------
autocmd FileType ruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=RjsComplete
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
"-----------------------------------------------------------------------------
" functions
"-----------------------------------------------------------------------------
function! TryRubyDoc()
  let l:word = expand("<cword>")
  let l:path = $HOME.'/.vimdata/ruby'
  let l:gems = '/var/lib/gems/1.8/doc'

  " try search in core help
  if findfile(l:path.'/core/'.l:word.'.html') != ''
    exec("Browse ".l:path.'/core/'.l:word.'.html')
    return
  endif
  " try search in stdlib help
  if findfile(l:path.'/stdlib/'.l:word.'/rdoc/index.html') != ''
    exec("Browse ".l:path.'/stdlib/'.l:word.'/rdoc/files/'.l:word.'_rb.html')
    return
  endif
  " try to search in gems directory
  if finddir(gems) != ''
    let l:filepath = findfile(l:word.'.html', l:gems.'/**')
    if l:filepath != ''
      exec("Browse ".l:filepath)
      return
    endif
  endif

  " perform vim help
  exec("help ".l:word)
endfunction

function! InitSubversion()
  if finddir(".svn") != ""
    if exists('g:subversion_menu')
      unmenu &File.&Subversion
    end
    let g:subversion_menu = 1

    anoremenu &File.&Subversion.&Commit\ File :call system("TortoiseProc.exe /command:commit /path:".shellescape(expand("%"))." /notempfile /closeonend:1")<cr>
    anoremenu &File.&Subversion.&Update\ File :call system("TortoiseProc.exe /command:update /path:".shellescape(expand("%"))." /notempfile")<cr>
    anoremenu &File.&Subversion.&Diff\ File :call system("TortoiseProc.exe /command:diff /path:".shellescape(expand("%"))." /notempfile")<cr>
    anoremenu &File.&Subversion.&Log\ File :call system("TortoiseProc.exe /command:log /path:".shellescape(expand("%"))." /notempfile")<cr>
    anoremenu &File.&Subversion.&Commit\ Buffers :call system("TortoiseProc.exe /command:commit /path:".shellescape(GetBuffersList("*"))." /notempfile /closeonend:1")<cr>
    anoremenu &File.&Subversion.&Update\ Buffers :call system("TortoiseProc.exe /command:update /path:".shellescape(GetBuffersList("*"))." /notempfile")<cr>
    anoremenu &File.&Subversion.&Commit\ Project :call system("TortoiseProc.exe /command:commit /path:".shellescape(expand("%:p:h"))." /notempfile /closeonend:1")<cr>
    anoremenu &File.&Subversion.&Update\ Project :call system("TortoiseProc.exe /command:update /path:".shellescape(expand("%:p:h"))." /notempfile")<cr>
    anoremenu &File.&Subversion.&Log\ Project :call system("TortoiseProc.exe /command:log /path:".shellescape(expand("%:p:h"))." /notempfile")<cr>
    anoremenu &File.&Subversion.&Clean\ up\ Project :call system("TortoiseProc.exe /command:cleanup /path:".shellescape(expand("%:p:h"))." /notempfile")<cr>
  elseif finddir(".git") != ""
    if exists('g:subversion_menu')
      unmenu &File.&Subversion
    end
    let g:subversion_menu = 1

    anoremenu &File.&Subversion.&Commit\ Project :GitCommit<cr>
    anoremenu &File.&Subversion.&Push\ Project :GitPush<cr>
    anoremenu &File.&Subversion.&Add\ Buffer :call system("git add ".shellescape(expand('%')))<cr>
    anoremenu &File.&Subversion.&Add\ Buffers :call system("git add ".shellescape(GetBuffersList(" ")))<cr>
    anoremenu &File.&Subversion.&Pull\ Project :GitPull<cr>
  endif
endfunction

function! TabJump(direction)
  let l:tablen=tabpagenr('$')
  let l:tabcur=tabpagenr()
  if a:direction=='left'
    if l:tabcur>1
      execute 'tabprevious'
    endif
  else
    if l:tabcur!=l:tablen
      execute 'tabnext'
    endif
  endif
endfunction

function! TabMove(direction)
  let l:tablen=tabpagenr('$')
  let l:tabcur=tabpagenr()
  if a:direction=='left'
    if l:tabcur>1
      execute 'tabmove' l:tabcur-2
    endif
  else
    if l:tabcur!=l:tablen
      execute 'tabmove' l:tabcur
    endif
  endif
endfunction

function! VisualTagWrap()
  let l:tag=input('tag to wrap block: ')
  if len(l:tag)>0
    execute 'normal! `>a</'.l:tag.'>'
    execute 'normal! `<i<'.l:tag.'>'
  endif
endfunction

function! VisualSearch(cmd)
  let l:old_reg=getreg('"')
  let l:old_regtype=getregtype('"')
  normal! gvy
  let @/='\V'.substitute(substitute(substitute(escape(@@, a:cmd.'\'), '^\_s\+', '\\s\\+', ''), '\_s\+$', '\\s\\*', ''), '\_s\+', '\\_s\\+', 'g')
  normal! gV
  call setreg('"', l:old_reg, l:old_regtype)
endfunction

function! RemoveTrailingSpaces()
  normal! mzHmy
"  execute '%s/^        /  /ge'
"  execute '%s/ /  /ge'
  execute '%s/\t/  /ge'
  execute '%s/\s\+$//ge'
  normal! 'yzt`z
endfunction

function! BackupDir()
  if has("win32")
    let l:backupdir=$HOME.'\.backup\'.substitute(expand('%:p:h'), ':', '', '')
  else
    let l:backupdir=substitute($HOME.'/.backup/'.substitute(expand('%:p:h'), ':', '', ''), '//', '/', '')
  endif

  if !isdirectory(l:backupdir)
    call mkdir(l:backupdir, 'p', 0700)
  endif

  let &backupdir=l:backupdir

  if has("win32")
    let &backupext=strftime('~%Y-%m-%d %H_%M_%S~')
  else
    let &backupext=strftime('~%Y-%m-%d %H:%M:%S~')
  endif
endfunction

function! InsertTabWordWrapper()
 let col = col('.') - 1
 if !col || getline('.')[col - 1] !~ '\k'
   return "\<tab>"
 else
   return "\<c-p>"
 endif
endfunction

function! InsertTabLineWrapper()
 let col = col('.') - 1
 if !col || getline('.')[col - 1] !~ '\k'
   return "\<tab>"
 else
   return "\<c-x>\<c-l>"
 endif
endfunction

function! InsertSnippetWrapper()
 let inserted = TriggerSnippet()
 if inserted == "\<tab>"
   return ";"
 else
   return inserted
 endif
endfunction

function! RemoveFuzzyCache()
  if has('ruby')
ruby << RUBY
    $reset_cache = true
    def finder
      if $reset_cache
        @finder = begin
          roots = VIM.evaluate("g:fuzzy_roots").split("\n")
          ceiling = VIM.evaluate("g:fuzzy_ceiling").to_i
          ignore = VIM.evaluate("g:fuzzy_ignore").split(/[;,]/)
          FuzzyFileFinder.new(roots, ceiling, ignore)
        end
        $reset_cache = false
      else
        @finder ||= begin
          roots = VIM.evaluate("g:fuzzy_roots").split("\n")
          ceiling = VIM.evaluate("g:fuzzy_ceiling").to_i
          ignore = VIM.evaluate("g:fuzzy_ignore").split(/[;,]/)
          FuzzyFileFinder.new(roots, ceiling, ignore)
        end
      end
    end
RUBY
  endif

endfunction

function! GetBuffersList(delimiter)
  let i  = 1
  let m  = bufnr('$')
  let blist = ''
  while i <= m
    if bufloaded(i) && buflisted(i)
      if bufname(i) != ''
        if blist != ''
          let blist = blist.a:delimiter.bufname(i)
        else
          let blist = bufname(i)
        endif
      endif
    endif
    let i = i + 1
  endwh
  return blist
endf

"recalculate the trailing whitespace warning when idle, and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning

"return '[\s]' if trailing white space is detected
"return '' otherwise
function! StatuslineTrailingSpaceWarning()
    if !exists("b:statusline_trailing_space_warning")
        if search('\s\+$', 'nw') != 0
            let b:statusline_trailing_space_warning = '[\s]'
        else
            let b:statusline_trailing_space_warning = ''
        endif
    endif
    return b:statusline_trailing_space_warning
endfunction


"return the syntax highlight group under the cursor ''
function! StatuslineCurrentHighlight()
    let name = synIDattr(synID(line('.'),col('.'),1),'name')
    if name == ''
        return ''
    else
        return '[' . name . ']'
    endif
endfunction

"recalculate the tab warning flag when idle and after writing
autocmd cursorhold,bufwritepost * unlet! b:statusline_tab_warning

"return '[&et]' if &et is set wrong
"return '[mixed-indenting]' if spaces and tabs are used to indent
"return an empty string if everything is fine
function! StatuslineTabWarning()
    if !exists("b:statusline_tab_warning")
        let tabs = search('^\t', 'nw') != 0
        let spaces = search('^ ', 'nw') != 0

        if tabs && spaces
            let b:statusline_tab_warning =  '[mixed-indenting]'
        elseif (spaces && !&et) || (tabs && &et)
            let b:statusline_tab_warning = '[&et]'
        else
            let b:statusline_tab_warning = ''
        endif
    endif
    return b:statusline_tab_warning
endfunction

"recalculate the long line warning when idle and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_long_line_warning

"return a warning for "long lines" where "long" is either &textwidth or 80 (if
"no &textwidth is set)
"
"return '' if no long lines
"return '[#x,my,$z] if long lines are found, were x is the number of long
"lines, y is the median length of the long lines and z is the length of the
"longest line
function! StatuslineLongLineWarning()
    if !exists("b:statusline_long_line_warning")
        let long_line_lens = s:LongLines()

        if len(long_line_lens) > 0
            let b:statusline_long_line_warning = "[" .
                        \ '#' . len(long_line_lens) . "," .
                        \ 'm' . s:Median(long_line_lens) . "," .
                        \ '$' . max(long_line_lens) . "]"
        else
            let b:statusline_long_line_warning = ""
        endif
    endif
    return b:statusline_long_line_warning
endfunction

"return a list containing the lengths of the long lines in this buffer
function! s:LongLines()
    let threshold = (&tw ? &tw : 80)
    let spaces = repeat(" ", &ts)

    let long_line_lens = []

    let i = 1
    while i <= line("$")
        let len = strlen(substitute(getline(i), '\t', spaces, 'g'))
        if len > threshold
            call add(long_line_lens, len)
        endif
        let i += 1
    endwhile

    return long_line_lens
endfunction

"find the median of the given array of numbers
function! s:Median(nums)
    let nums = sort(a:nums)
    let l = len(nums)

    if l % 2 == 1
        let i = (l-1) / 2
        return nums[i]
    else
        return (nums[l/2] + nums[(l/2)-1]) / 2
    endif
endfunction

"visual search mappings
function! s:VSetSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@ = temp
endfunction
vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>

" The idea is to delete something anywhere, then go select characters elsewhere, and hit g" to swap the delete characters with the newly selected ones.
function! s:SwapVisualWithCut()
  normal! `.``
  if line(".")==line("'.") && col(".") < col("'.")
    let c = col('.')
    normal! gvp```]
    let c = col('.') - c
    normal! ``
    :silent call cursor(line("."),col(".")+c)
    normal! P
  else
    normal! gvp``P
  endif
endfunction
vnoremap <silent> g" <esc>:call <sid>SwapVisualWithCut()<cr>

"jump to last cursor position when opening a file
"dont do it when writing a commit log entry
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
    if &filetype !~ 'commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal! g`\""
            normal! zz
        endif
    end
endfunction

"define :HighlightLongLines command to highlight the offending parts of
"lines that are longer than the specified length (defaulting to 80)
command! -nargs=? HighlightLongLines call s:HighlightLongLines('<args>')
function! s:HighlightLongLines(width)
    let targetWidth = a:width != '' ? a:width : 79
    if targetWidth > 0
        exec 'match Todo /\%>' . (targetWidth) . 'v/'
    else
        echomsg "Usage: HighlightLongLines [natural number]"
    endif
endfunction

function! ToggleMatchParen()
  if exists("g:loaded_matchparen")
    :NoMatchParen
    :echo 'MatchParen plugin turned off'
  else
    :DoMatchParen
    :echo 'MatchParen plugin turned on'
  endif
endfunction

function! EnableDebugger()
  Rdebugger
  nnoremap <f5> :Rdebugger %<cr>
  inoremap <f5> <c-O>:Rdebugger %<cr>
  vnoremap <f5> <esc>:Rdebugger %<cr>
  nnoremap <s-f5> :call g:RubyDebugger.exit()<cr>
  inoremap <s-f5> <c-O>:call g:RubyDebugger.exit()<cr>
  vnoremap <s-f5> <esc>:call g:RubyDebugger.exit()<cr>
  nnoremap <f8> :call g:RubyDebugger.continue()<cr>
  inoremap <f8> <c-O>:call g:RubyDebugger.continue()<cr>
  vnoremap <f8> <esc>:call g:RubyDebugger.continue()<cr>
  nnoremap <f9> :call g:RubyDebugger.toggle_breakpoint()<cr>
  inoremap <f9> <c-O>:call g:RubyDebugger.toggle_breakpoint()<cr>
  vnoremap <f9> <esc>:call g:RubyDebugger.toggle_breakpoint()<cr>
  nnoremap <f10> :call g:RubyDebugger.next()<cr>
  inoremap <f10> <c-O>:call g:RubyDebugger.next()<cr>
  vnoremap <f10> <esc>:call g:RubyDebugger.next()<cr>
  nnoremap <f11> :call g:RubyDebugger.step()<cr>
  inoremap <f11> <c-O>:call g:RubyDebugger.step()<cr>
  vnoremap <f11> <esc>:call g:RubyDebugger.step()<cr>
  nnoremap <s-f11> :call g:RubyDebugger.finish()<cr>
  inoremap <s-f11> <c-O>:call g:RubyDebugger.finish()<cr>
  vnoremap <s-f11> <esc>:call g:RubyDebugger.finish()<cr>
endfunction


"-----------------------------------------------------------------------------
" plugins
"-----------------------------------------------------------------------------
"command! -nargs=0 RDocPreview call RDocRenderBufferToPreview()
"function! RDocRenderBufferToPreview()
"  let rdocoutput = "/tmp/vimrdoc/"
"  call system("rdoc " . bufname("%") . " --op " . rdocoutput)
"  call system("open -a Safari ". rdocoutput . "index.html")
"endfunction

" ruby code completion
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_include_object = 1
let g:rubycomplete_include_objectspace = 1
let g:rubycomplete_rails = 1

" Matchit
"let b:match_words = '<:>,<tag>:</tag>'
" SessionMgr
let g:SessionMgr_AutoManage = 0
let g:SessionMgr_DefaultName = "last"
" SnipMate
"let s:did_snips_mappings = 1
" Tlist settings
let g:Tlist_Show_One_File = 1
let g:Tlist_GainFocus_On_ToggleOpen = 1
let g:Tlist_Use_Right_Window = 1
let g:Tlist_WinWidth = 45
set completeopt-=preview
set completeopt+=longest
" Command-T settings
set wildignore+=*.o,*.obj,.git,.svn,vendor/**,public/images/**,tmp/cache/**,public/assets/**,public/stylesheets/compiled/**,tmp/sass-cache/**,test/pages/**
let g:CommandTMaxHeight = 17
" fuzzyfinder
let g:fuzzy_ignore = "*log/*;*.swf;*.cache;*.ttf;*.jpg;*.png;*/doc/*;*/etc/*;*/ckeditor/*;*/ckfinder/*;*/fckeditor/*;*vendor/*;*tmp/*;*/.svn/*;*/controllers/admin/*;*public/images/*;*/ufiles/*;*.git/*;*/compiled/*;*/script/*;*test/pages/*;*public/assets/*"

"set mps+=[:]
" netrw settings
"let g:netrw_ftp_cmd = "ftp -p"
" php settings
let php_sql_query = 1
let php_htmlInStrings = 1
let php_baselib = 1
let php_smart_members = 1
let php_alt_properties = 1
let php_highlight_quotes = 1
let php_alt_construct_parents = 1
let php_folding = 2
let php_fold_arrays = 1
let php_fold_heredoc = 1
" notes
let g:notesRoot = '~/notes'

" omnicppcomplete options
let OmniCpp_ShowScopeInAbbr = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_ShowPrototypeInAbbr = 1

" javascript omnicomplete
let g:rjscomplete_library = 'jQuery_1.4'
let g:rjscomplete_find_in_prototype = 0

"let g:tlist_javascript_settings = 'javascript;v:var;c:class;p:prototype;m:method;f:function;o:object'

"snipmate setup
if has("unix")
  source ~/.vim/snippets/support_functions.vim
else
  source ~/vimfiles/snippets/support_functions.vim
endif

"autocmd vimenter * call s:SetupSnippets()
"function! s:SetupSnippets()
"  "if we're in a rails env then read in the rails snippets
"  if filereadable("./config/environment.rb")
"    call ExtractSnips("~/.vim/snippets/ruby-rails", "ruby")
"    call ExtractSnips("~/.vim/snippets/eruby-rails", "eruby")
"  endif
"
"  call ExtractSnips("~/.vim/snippets/html", "eruby")
"  call ExtractSnips("~/.vim/snippets/html", "xhtml")
"  call ExtractSnips("~/.vim/snippets/html", "php")
"endfunction

" used to make vim default 'man' viewer
" see http://vim.wikia.com/wiki/Using_vim_as_a_man-page_viewer_under_Unix
let $PAGER=''
