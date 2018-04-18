# pt
function pt()
{
    cat <<EOF
===pt===
# 拡張子.sql で sqlディレクトリ配下にあるファイルを検索
$ pt -g \.sql$ **/sql/*

# 拡張子.sh のファイルの中身を全検索
$ pt hoge */*/*.sh

# monococoに関するレポジトリでModel配下の"->{status}"を検索
$ pt -e "\-\>{status}" m-*/lib/*/Model/*
========
EOF
}
