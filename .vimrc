filetype plugin indent off

if has('vim_starting')
    set nocompatible
    set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/dotfiles/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

"NeoBundle 'YankRing.vim'
"NeoBundle 'The-NERD-Commenter'
"NeoBundle 'neocomplcache'
"NeoBundle 'w0ng/vim-hybrid'
"NeoBundle 'nanotech/jellybeans.vim'
"削除後に:NeoBundleClean

filetype plugin indent on
NeoBundleCheck "vim起動時に自動インストール

"neocomplcache
let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化


set nocompatible "vim非互換モード
filetype off
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,iso-2022-jp,cp932,euc-jp,utf-8
set noswapfile

"表示系"
set number            "行番号表示
set laststatus=2      "ステータスラインを常に表示(2:常に表示)
set ruler             "ルーラー表示(行列番号)
set showmode          "モード表示
set showcmd           "入力中のコマンドをステータスに表示

"移動形
set virtualedit+=all    "全移動可能
set backspace=2         "backspace有効
noremap j gj
noremap k gk
noremap gj j
noremap gk k

"検索系
set wrapscan          "最後まで行ったら最初に戻る
set ignorecase        "検索文字列が小文字の場合は大文字小文字区別しない
set smartcase         "検索文字列に大文字が含まれる場合は区別する

"カラー表示
syntax on             "syntaxを有効
set t_Co=256          "256色対応
"let g:hybrid_use_Xresources = 1
colorscheme hybrid    "カラースキーマ設定

"プログラミング系
set smartindent                              "オートインデント
set tabstop=4 shiftwidth=4 softtabstop=0     "インデント幅
"set expandtab                                "タブの代わりに空白挿入
set showmatch                                "括弧入力時に対応する括弧表示
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif  "前回の終了時の行で起動
