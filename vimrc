
runtime! debian.vim
if has("syntax")
  syntax on
endif
colorscheme Tomorrow

set nocompatible
" MACOS
" if !has('clipboard')
" vmap "+y :w !pbcopy<CR><CR>
" vmap y :w !pbcopy<CR><CR>
" nmap yy :.w !pbcopy<CR><CR>
" nmap p :r !pbpaste<CR><CR>
" 共享剪切板
set clipboard+=unnamed
set relativenumber
" 快捷键复制粘贴
" vmap <leader>c "+y
" nmap <leader>v "+gp
" endif
filetype plugin on
set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#rc()
call vundle#begin()
Bundle 'taglist.vim'
" ctags 配置:F3快捷键显示程序中的各种tags，包括变量和函数等。
map <F3> :TlistToggle<CR>
let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_WinWidt=25
Bundle 'dense-analysis/ale'
Bundle 'scrooloose/nerdtree'
map <F2> : NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = 'v'
let NERDTreeIgnore = ['__pycache__']
Bundle 'tpope/vim-pathogen'
execute pathogen#infect()

Bundle 'mileszs/ack.vim'
" let b:ale_linters = {'rust': ['']}
Bundle 'lfv89/vim-interestingwords'
nnoremap <silent> <leader>k :call InterestingWords('n')<cr>

nnoremap <silent> <leader>K :call UncolorAllWords()<cr>

nnoremap <silent> n :call WordNavigation('forward')<cr>
nnoremap <silent> N :call WordNavigation('backward')<cr>
map <F5> :!cscope-indexer -r<CR>:cs reset<CR><CR>
call vundle#end()
" set background=dark
set backspace=indent,eol,start
set ai
set autoread
set cin
set cino=:0g0t0(sus
set cursorline
set et
set hls
set ignorecase
set is
set laststatus=2
" set list
" set mouse+=a
" set selection=exclusive
" set selectmode=mouse,key
set nu
set pastetoggle=<C-a>
set sm
set sw=4
set ts=4
set noexpandtab
set t_Co=256
set whichwrap=b,s,<,>,[,]
set statusline+=%f
set tags=./tags
set autochdir
filetype indent on

au BufNewFile,BufRead *akefile set noexpandtab
au BufNewFile,BufRead *.css         set softtabstop=2 | set shiftwidth=2
au BufNewFile,BufRead *.eex         set softtabstop=2 | set shiftwidth=2
au BufNewFile,BufRead *.erb         set softtabstop=2 | set shiftwidth=2
au BufNewFile,BufRead *.ex          set softtabstop=2 | set shiftwidth=2
au BufNewFile,BufRead *.exs         set softtabstop=2 | set shiftwidth=2
au BufNewFile,BufRead *.hbs         set softtabstop=2 | set shiftwidth=2
au BufNewFile,BufRead *.jbuilder    set softtabstop=2 | set shiftwidth=2
au BufNewFile,BufRead *.json        set softtabstop=2 | set shiftwidth=2
au BufNewFile,BufRead *.md          set softtabstop=2 | set shiftwidth=2
au BufNewFile,BufRead *.rake        set softtabstop=2 | set shiftwidth=2
au BufNewFile,BufRead *.rb          set softtabstop=2 | set shiftwidth=2
au BufNewFile,BufRead *.txt         set softtabstop=2 | set shiftwidth=2
au BufNewFile,BufRead *.xml         set softtabstop=2 | set shiftwidth=2
au BufNewFile,BufRead *.yml         set softtabstop=2 | set shiftwidth=2
au BufNewFile,BufRead Vagrantfile   set softtabstop=2 | set shiftwidth=2

au FileType javascript              set softtabstop=2 | set shiftwidth=2
au FileType ruby                    set softtabstop=2 | set shiftwidth=2
au FileType rust                    set softtabstop=4 | set shiftwidth=4

" autocmd BufWritePost *.exs silent :!mix-160-dev format %
" autocmd BufWritePost *.ex silent :!mix-160-dev format %
