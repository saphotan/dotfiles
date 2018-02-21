"
" A (not so) minimal vimrc.
"

" You want Vim, not vi. When Vim finds a vimrc, 'nocomptaible' is set anyway.
" We set it explicitely to make our position clear!
set nocompatible

filetype plugin indent on  " Load plugins according to detected filetype.
syntax on                  " Enable syntax highlighting.

set autoindent             " Indent according to previous line.
" set expandtab              " Use spaces instead of tabs.
set softtabstop =4         " Tab key indents by 4 spaces.
set shiftwidth  =4         " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.

set backspace   =indent,eol,start  " Make backspace work as you would expect.
set hidden                 " Switch between buffers without having to save first.
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line.

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.

set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

set cursorline             " Find the current line quickly.
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.

set list                   " Show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
"  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif


" The fish shell is not very compatible to other shells and unexpectedly
" breaks things that use 'shell'.
if &shell =~# 'fish$'
  set shell=/bin/bash
endif


"文字エンコード
set encoding=utf-8

"ノーマルモードに戻る
"※ ESCにマップすると方向キーでABCDが入力されてしまう問題のためコメントアウト
"inoremap <silent> jj <ESC>

set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示

"画面上でタブ文字が占める幅
set tabstop=4

"改行時に前の行のインデントを継続する
set autoindent
"改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent

"コードの色分け
syntax on

"ノーマルモード時に、カーソル位置で改行を挿入する
"※ ESCにマップすると方向キーでABCDが入力されてしまう問題のためコメントアウト
" nmap <CR> i<CR><ESC>

"ウィンドウ操作系の <C-w> を s に置き換える
nnoremap s <Nop>
"分割したウィンドウ間を移動する
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
"分割したウィンドウそのものを移動する
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H

" 挿入モード終了時に IME 状態を保存しない
"※ ESCにマップすると方向キーでABCDが入力されてしまう問題のためコメントアウト
"inoremap <silent> <Esc> <Esc>
"inoremap <silent> <C-[> <Esc>

" 「日本語入力固定モード」切り替えキー
inoremap <silent><C-j> <C-^>

"NERDTreeを起動
nnoremap <silent><C-e> :NERDTreeToggle<CR>
