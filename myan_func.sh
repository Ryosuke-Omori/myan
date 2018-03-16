# chef
function chef()
{
    cat <<EOF
===chef===
# knife solo
$ knife solo cook root@host -i ~/.ssh/hoge

# Why run
$ knife solo cook -N [node_file] user@host -W
========
EOF

}

# cp( scp | rsync )
function cp()
{
    cat <<EOF
===cp===
# scp
$ scp [file] user@host:/usr/local/temp      # おくる
$ scp user@host:[file] [directory]          # とってくる

# rsync
$ rsync [file] user@host:/usr/local/temp
========
EOF
}

# cp( scp | rsync )
function dstat()
{
    cat <<EOF
===dstat===
参考URL:
https://orebibou.com/2016/06/dstat%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89%E3%81%A7%E8%A6%9A%E3%81%88%E3%81%A6%E3%81%8A%E3%81%8D%E3%81%9F%E3%81%84%E4%BD%BF%E3%81%84%E6%96%B96%E5%80%8B/
http://www.atmarkit.co.jp/ait/articles/1506/01/news152.html

-CPU-
usr … ユーザ空間で使われたCPU使用時間の割合
sys … システム空間で使われたCPU仕様時間の割合
idl … アイドル状態のCPU時間の割合
wai … 応答の待ち状態にあったCPU時間の割合
hiq … ハードウェア割り込み処理に使われたCPU時間の割合
siq … ソフトウェア割り込み処理に使われたCPU時間の割合

-DISK-
read … ディスクの読み込みバイト数
writ … ディスクの書き込みバイト数

-ネットワーク-
recv … ネットワーク全体での受信データ容量
send … ネットワーク全体での送信データ容量

-ページング-
in … ディスクからメモリに読み込んだバイト数
out … メモリ不足時にディスクに書き出したバイト数

-割り込み／コンテキストスイッチの回数-
int … 割り込み回数
csw … コンテキストスイッチの回数
===========
EOF
}

# git
function git()
{
    cat <<EOF
===git===
# hunk ごとに add
$ git add -p

# add だけ取り消し
$ git reset HEAD

# 直前の commit 取り消し
# git reset --hard HEAD^    # ステージング含む
# git reset --soft HEAD^    # コミットのみ
=========
EOF
}

# journalctl
function journalctl()
{
    cat <<EOF
===journalctl===
# 2/23 13:05:00-13:06:59 の スターレット のジャーナルログ
$ sudo journalctl -u starlet-hoge | grep 'Feb 23 13:0[56]:'

# tail -f っぽくログ監視(-f)
$ sudo journalctl -f

# 最近(-e)の詳細(-x)なログ
$ sudo journalctl -xe

# 末尾だけ表示(-n)
$ sudo journalctl -n
$ sudo journalctl -n 100    # 末尾から100行

# 起動時からの全メッセージ表示(-b)
$ sudo journalctl -b
$ sudo journalctl -b 2      # 2回前の起動時のログを表示
================
EOF
}

# pt
function pt()
{
    cat <<EOF
===pt===
# 拡張子.sql で sqlディレクトリ配下にあるファイルを検索
$ pt -g \.sql$ **/sql/*

# 拡張子.sh のファイルの中身を全検索
$ pt hoge */*/*.sh
========
EOF
}

# pt
function service()
{
    cat <<EOF
===service===
-service(CentOS6)-------------------
# 状態確認
$ service [service] status                  # サービス指定
$ service --status-all                      # ずべてのサービス

# 自動起動設定確認
$ chkconfig --list [service]                # サービス指定
$ chkconfig --list                          # すべてのサービス

# 自動起動有効
$ chkconfig [service] on
＊chkconfig http on
$ chkconfig [--level levels] [service] on
＊chkconfig --level 3 http on
＊chkconfig --level 2345 http on            # レベルは複数指定可


-systemd(CentOS7)-------------------
# サービス一覧
$ systemctl list-unit-files --type=service

# サービス自動起動有効
$ systemctl enable [service]
  ＊無効化は "disable"
  ＊自動起動設定確認は "is-enabled"

# 設定ファイル再読込
$ systemctl daemon-reload


-runit---------------------------
# デーモン起動
$ sv start [service]
＊sv start daemon-m-image

# 状態確認
$ sv status [service]
=============
EOF
}
