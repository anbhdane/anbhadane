nnoremap <Space> <Nop>
let mapleader=" "
set shell=/bin/bash
cnoreabbrev W w
nnoremap ; :
vnoremap ; :
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP


nnoremap de d^
vnoremap de d^

"------------------------------------This is set of commands used for the
"python and fortran execution external to vim they can be used in insert mode.
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR> 
autocmd FileType fortran map <buffer> <F5> :w<CR>:exec '!f95' shellescape(@%,1)<CR><CR>:exec '!./a.out'<CR>
autocmd FileType fortran imap <buffer> <F5> <esc>:w<CR>:exec '!f95' shellescape(@%,1) <CR><CR>:exec '!./a.out'<CR>
autocmd FileType fortran map <buffer> <F2> <CR>:exec '!xmgrace -batch temp.bfile -nosafe -hardcopy'<CR><CR>:exec '!sxiv *.png'<CR>
autocmd FileType fortran map <buffer> <F2><esc><CR>:exec '!xmgrace -batch temp.bfile -nosafe -hardcopy'<CR><CR>:exec '!sxiv *.png'<CR>
:function Meow()
:  echom "Meow!"
:endfunction
:function Xg()
:   :exec '!xmgrace -batch '.input('Enter file: ').' -nosafe -hardcopy ; sxiv *.png'
:endfunction


nnoremap xg :execute '!xmgrace -batch '.input('Enter file: ').' -nosafe -hardcopy; sxiv *.png'<CR>
"-----------------------------------------------------------------------------------
"---------------This is for the tags

:map <F10> :sp tags<CR>:%s/^\([^    :]*:\)\=\([^    ]*\).*syntax keyword Tag \2/<CR>:wq! tags.vim<CR>/^<CR><<F12>
:map <F12> :so tags.vim<CR>
"---------------tags engs here

"---------------------------------------I forget what is this but very
"important related to the path finding and path changing.
set path+=**
set wildmenu

set makeprg=bundle\ exec\ rspec\ -f\ QuickfixFormatter
"------------------------------------------------------------------------
"-------------------------------This is for the fortran syntax 
let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1
"--------------------------------------------------------------------------






augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source $MYVIMRC
augroup END
" set the runtime path to include Vundle and initialize
set nocompatible              " required (This is required as to seprated itself from vi)
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
au BufNewFile,BufRead *.py,*.f95
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix    " required
" -----------------------------------------------------------------------------
"  GENERAL SETTINGS FOR EVERYONE
"  ----------------------------------------------------------------------------
filetype plugin indent on
set nocompatible
set autoindent
set nomodeline " disable modeline vulnerability

" text encoding
set encoding=utf8

" use 4 spaces for tabs
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround

set backspace =indent,eol,start
set hidden
set laststatus =2

" Set linenumbers
set number
set relativenumber
set wrap

" column ruler at 100
set ruler
set colorcolumn=80

" Highlight searching
set incsearch
set showmatch
set hlsearch
set ignorecase
set smartcase

if has("nvim")
    set inccommand="nosplit"
endif

set autoread " autoread files
set mouse=a " use mouse for scroll or window size
" -----------------------------------------------------------------------------
"  PLUGIN SETUP
"  ----------------------------------------------------------------------------
" Autoload vim plug if not already there

if has("nvim")
    if empty(glob('~/.config/nvim/autoload/plug.vim'))
        silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        " autocmd VimEnter * PlugInstall
    endif
else 
    if empty(glob('~/.vim/autoload/plug.vim'))
        silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        " autocmd VimEnter * PlugInstall
    endif
endif

" All the plugins are listed here
if has('nvim')
    call plug#begin('~/.config/nvim/plug.vim')
else
    call plug#begin('~/.vim/plug.vim')
endif

" Productivity
Plug 'junegunn/vim-plug'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/nerdtree', { 'on' : 'NERDTreeToggle' }
Plug 'rafi/awesome-vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'fiazz/vim-colorschemes'
Plug 'vimwiki/vimwiki'
" Programming plugins
Plug 'lervag/vimtex'

Plug 'gmarik/Vundle.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'abudden/taghighlight-automirror'
Plug 'vim-scripts/AutoComplPop' " This pluggin is for the autocompletion.
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter' " This to comment the line very effieintly, <leader> cc for comment and <leader> cu for uncommnezt. 
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end() " start all the plugins above 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/vimPlugins/')

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'itchyny/lightline.vim' " This colorscheme is for the tab.
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" ...

" All of your Plugins must be added before the following line
call vundle#end() 

let g:rainbow_active = 1

set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c
" -----------------------------------------------------------------------------
"  VIMTEX OPTIONS
"  ----------------------------------------------------------------------------
if has('unix')
    if has('mac')
        let g:vimtex_view_method = "skim"
        let g:vimtex_view_general_viewer
                \ = '/Applications/Skim.app/Contents/SharedSupport/displayline'
        let g:vimtex_view_general_options = '-r @line @pdf @tex'

        " This adds a callback hook that updates Skim after compilation
        let g:vimtex_compiler_callback_hooks = ['UpdateSkim']
        function! UpdateSkim(status)
            if !a:status | return | endif

            let l:out = b:vimtex.out()
            let l:tex = expand('%:p')
            let l:cmd = [g:vimtex_view_general_viewer, '-r']
            if !empty(system('pgrep Skim'))
            call extend(l:cmd, ['-g'])
            endif
            if has('nvim')
            call jobstart(l:cmd + [line('.'), l:out, l:tex])
            elseif has('job')
            call job_start(l:cmd + [line('.'), l:out, l:tex])
            else
            call system(join(l:cmd + [line('.'), shellescape(l:out), shellescape(l:tex)], ' '))
            endif
        endfunction
    else
        let g:latex_view_general_viewer = "zathura"
        let g:vimtex_view_method = "zathura"
    endif
elseif has('win32')

endif

let g:tex_flavor = "latex"
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_quickfix_mode = 2
if has('nvim')
    let g:vimtex_compiler_progname = 'nvr'
endif

" One of the neosnippet plugins will conceal symbols in LaTeX which is
" confusing
let g:tex_conceal = ""

" Can hide specifc warning messages from the quickfix window
" Quickfix with Neovim is broken or something
" https://github.com/lervag/vimtex/issues/773
let g:vimtex_quickfix_latexlog = {
            \ 'default' : 1,
            \ 'fix_paths' : 0,
            \ 'general' : 1,
            \ 'references' : 1,
            \ 'overfull' : 1,
            \ 'underfull' : 1,
            \ 'font' : 1,
            \ 'packages' : {
            \   'default' : 1,
            \   'natbib' : 1,
            \   'biblatex' : 1,
            \   'babel' : 1,
            \   'hyperref' : 1,
            \   'scrreprt' : 1,
            \   'fixltx2e' : 1,
            \   'titlesec' : 1,
            \ },
            \}

" -----------------------------------------------------------------------------
"  APPEARANCE
"   ----------------------------------------------------------------------------
" set guifont=Sauce\ Code\ Pro\ Medium\ Nerd\ Font\ Complete\ Mono\ 125
syntax on
set background=dark
let g:onedark_termcolors=16
colorscheme molokai
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ }
hi Normal guibg=NONE ctermbg=NONE
let g:airline#extensions#tabline#enabled = 1
let g:airline_solarized_bg='dark'




"--------------------------------------------------------------------------------
"from here this is my personel vimrc

set nocompatible 
filetype plugin on 
syntax on 
"--------------------------------------------This are programs that i am
"calling or reading not from any file, but made itself inside the .vimrc
inoremap <tab><tab> <Esc>/<++><Return>"_c4l
autocmd Filetype python inoremap ;i import numpy as np <CR>import matplotlib.pyplot as plt<CR>from math import *<CR>
autocmd Filetype python inoremap ;n ls = np.arange(<++>,<++>,0.1)<CR>
autocmd Filetype python inoremap ;g ls = np.arange(<++>,<++>,0.1)<CR>plt.plot(ls,<++>)<CR>plt.show()<CR>
autocmd Filetype python inoremap ;ga ls = np.arange(<++>,<++>,0.1)<CR>plt.plot(ls,<++>)<CR>plt.title("<++>")<CR>plt.xlabel("<++>")<CR>plt.show()<CR>
autocmd Filetype python inoremap ;d def f(<++>):<CR><++><CR>return <++><CR>ks = f(<++><CR>
"------------------------------------------------------------------------------------------

"-----------------------------------------This is to change the opacity of the
"vim program and working fine. 

let t:is_transparent = 0                                                                        
function! Toggle_transparent_background()                                                       
  if t:is_transparent == 0                                                                      
    hi Normal guibg=#111111 ctermbg=black                                                       
    let t:is_transparent = 1                                                                    
  else                                                                                          
    hi Normal guibg=NONE ctermbg=NONE                                                           
    let t:is_transparent = 0                                                                    
  endif                                                                                         
endfunction                                                                                     
nnoremap <C-x><C-t> :call Toggle_transparent_background()<CR> 
"---------------------------------------------------------------------------



"-------------------------------------------This is to highlight cursor, but
"still is not working need to cheack the someting else.
"nnoremap <C-K> :call HighlightNearCursor()<CR>
"function HighlightNearCursor()
"  if !exists("s:highlightcursor")
"    match Todo /\k*\%#\k*/
"    let s:highlightcursor=1
"  else
"    match None
"    unlet s:highlightcursor
"  endif
"endfunction
"-----------------------------------------------------------------------------
"-----------------------This is to comment and uncomment in python program"
vnoremap <silent> # :s/^/#/<cr>:noh<cr>  
vnoremap <silent> -# :s/^#//<cr>:noh<cr>
"--------------------------------------------------------------------------
"-----------------------This is to comment and uncomment in fortran program"
vnoremap <silent> ! :s/^/!/<cr>:noh<cr>  
vnoremap <silent> -! :s/^!//<cr>:noh<cr>
"--------------------------------------------------------------------------
"-----------------------This is for the spell cheaking-------------
setlocal spell spelllang=en_us
"------------------------------------------------------------------
"-----------------------This is to automatically start the nerdtree
nmap <F6> :NERDTreeToggle<CR>
nmap <C-w><w> <C-j>
nmap <C-w><l> <C-k>
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>i :wincmd i<CR>
map <leader>l :wincmd l<CR>
nnoremap <leader>pt :NERDTreeToggle<Enter>
nnoremap <silent><leader>pv :NERDTreeFind<CR>
"-----------------------------------------------------------------------------
"
"
"
"Here I will map the <C-c> with leader and any other keyword
map <leader><a> <C-c>
"for saving the file by ctrl+s 
inoremap <C-S> <Esc>:update<cr>gi 
nnoremap <C-S> :update<cr>
"---------------------------------------------------------------------------
