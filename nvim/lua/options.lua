local set = vim.opt

set.encoding = 'utf-8'
set.fileencodings = 'utf-8,sjis'
set.fileformats = 'unix,dos,mac'
set.helplang = 'ja'
set.title = true
set.swapfile = false
set.syntax = 'on'
set.number = true
set.ruler = true
set.cursorline = true
set.hls = true
set.showmatch = true

set.updatetime = 300
set.laststatus = 2
-- バッファを未保存でも閉じる
set.hidden = true
-- バックスペースの有効化
set.backspace = 'indent,eol,start'
-- コマンドのタイムラグをなくす
set.ttimeoutlen = 1

-- タブを基本2文字に
set.smarttab = true
set.tabstop = 2
set.shiftwidth = 2
-- 入力したタブをスペースに置き換え
set.expandtab = true
-- 1行前のインデントを考慮して自動でインデント
set.autoindent = true
set.smartindent = true
-- 行末の1文字先までカーソルを移動できるように
set.virtualedit = 'onemore'
-- 検索文字列入力時に順次対象文字列にヒットさせる
set.incsearch = true
-- 検索時、大文字小文字の区別をしない
set.ignorecase = true
-- 検索時、検索文字列に大文字が含まれていたら大文字小文字の区別をする
set.smartcase = true
set.clipboard = 'unnamed'
-- スクロール時、常に下に表示するバッファ行の数
set.scrolloff = 5

-- 最後に開いていた行を開く
vim.cmd([[
  augroup vimrcEx
    au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif
  augroup END
]])
