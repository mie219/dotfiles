" Encoding
set encoding=utf-8
set fileencodings=utf-8

" Indent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
filetype indent on

" Visual
syntax on
set number
set showcmd
set title
set ruler
set nowrap
set cursorline
set t_Co=256
colorscheme molokai
let loaded_matchparen=1

" Backup
set nobackup
set noswapfile

" Key mapping
noremap j gj
noremap k gk
noremap b B
noremap BB :ls<CR>:buf 
" inoremap <C-k> <up>
" inoremap <C-j> <down>
inoremap <C-h> <left>
inoremap <C-l> <right>

" im_control.vim
inoremap <silent> <C-j> <C-r>=IMState('FixMode')<CR>
let IM_CtrlIBusPython=1

set timeout timeoutlen=3000 ttimeoutlen=100

" NeoBundle
set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/vimproc'
NeoBundle 'thinca/vim-ref'
NeoBundle 'fuenor/im_control.vim'
NeoBundle 'Shougo/vimfiler'

filetype plugin indent on

if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
endif

" ref.vim
let g:ref_use_vimproc=1
let g:ref_refe_version=2

" Vim-LaTeX
set shellslash
set grepprg=grep\ -nH\ $*
let g:Tex_AutoFolding=0
let g:tex_flavor='latex'
let g:Imap_UsePlaceHolders=1
let g:Imap_DeleteEmptyPlaceHolders=1
let g:Imap_StickyPlaceHolders=0
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_FormatDependency_ps='dvi,ps'
let g:Tex_FormatDependency_pdf='dvi,pdf'
let g:Tex_CompileRule_dvi='platex -kanji=utf8 -synctex=1 -interaction=nonstopmode $*'
"let g:Tex_CompileRule_dvi='uplatex -synctex=1 -interaction=nonstopmode $*'
"let g:Tex_CompileRule_ps='dvips -Ppdf -o $*.ps $*.dvi'
let g:Tex_CompileRule_pdf='dvipdfmx $*.dvi'
let g:Tex_BibtexFlavor='pbibtex -kanji=utf8'
"let g:Tex_BibtexFlavor='upbibtex'
"let g:Tex_MakeIndexFlavor='mendex $*.idx'
let g:Tex_UseEditorSettingInDVIViewer=1
"let g:Tex_ViewRule_dvi='pxdvi -watchfile 1 -editor "vim --servername vim-latex -n --remote-silent +\%l \%f"'
"let g:Tex_ViewRule_dvi='advi -watch-file 1'
"let g:Tex_ViewRule_dvi='evince'
"let g:Tex_ViewRule_dvi='okular --unique'
"let g:Tex_ViewRule_dvi='wine ~/.wine/drive_c/w32tex/dviout/dviout.exe -1'
"let g:Tex_ViewRule_ps='gv --watch'
"let g:Tex_ViewRule_ps='evince'
"let g:Tex_ViewRule_ps='okular --unique'
"let g:Tex_ViewRule_ps='zathura'
"let g:Tex_ViewRule_pdf='texworks'
"let g:Tex_ViewRule_pdf='evince'
"let g:Tex_ViewRule_pdf='okular --unique'
"let g:Tex_ViewRule_pdf='pdfviewer'
"let g:Tex_ViewRule_pdf='zathura'
""let g:Tex_ViewRule_pdf='gv --watch'
