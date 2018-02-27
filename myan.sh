#!/bin/bash

set -ue

# list
function list() 
{
    cat <<EOF
===list===
cp
git
journalctl
pt
==========
EOF
}

# ==========================================

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
$ scp [file] user@host:/usr/local/temp

# rsync
$ rsync [file] user@host:/usr/local/temp
========
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

# ====================================================

echo "\\(^o^)/ﾊｼﾞﾏﾀ"
while true ; do
    echo "   list : コマンド一覧"
    echo "   bye  : 終了"
    echo -n "   command: "
    read COM

    # list
    if [ "${COM}" == "list" ];then
        list
        continue
    fi

    # cp
    if [ "${COM}" == "cp" ];then
        cp
        break
    fi

    # chef
    if [ "${COM}" == "chef" ];then
        chef
        break
    fi


    # git
    if [ "${COM}" == "git" ];then
        git
        break
    fi

    # journalctl
    if [ "${COM}" == "journalctl" ];then
        journalctl
        break
    fi

    # pt
    if [ "${COM}" == "pt" ];then
        pt
        break
    fi

    # bye
    if [ "${COM}" == "bye" ];then
        break
    fi
done

echo "\\(^o^)/ｵﾜﾀ"

# END
