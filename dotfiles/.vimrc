set number " 行番号の追加
set title " タイトルの追加
syntax enable " シンタックスハイライトを有効化
set wildmenu " vim上からファイルを選択できる機能を有効化
set ambiwidth=double " 全角文字の重なりを解消
set backspace=indent,eol,start " 挿入モードでbackspaceを使って削除を可能に
set laststatus=2 " ステータスバーを2行表示
set showmatch " 対応する括弧をハイライト
set smartindent " 前の行のインデントを保持
set mouse=a " マウスの有効化
set shiftwidth=0 " タブの設定(タブ幅4の場合)
set softtabstop=2
set tabstop=2
set expandtab " タブ文字の代わりに空白
set hlsearch " 検索結果をハイライト
set incsearch " 最初の一文字を入力した時点から検索開始
set wrapscan " ファイル末尾に到達すると再び先頭から検索

set spell " スペルチェック
set spelllang+=cjk

" カラースキーマ設定
"" 行番号
autocmd ColorScheme * highlight lineNr ctermfg=248 ctermbg=233 guifg=#CCCCCC
"" スペルチェック
autocmd ColorScheme * hi clear SpellBad
    \| hi SpellBad cterm=underline ctermbg=none
"" タイトル
autocmd ColorScheme * highlight Title cterm=BOLD ctermfg=233 ctermbg=248

colorscheme koehler
