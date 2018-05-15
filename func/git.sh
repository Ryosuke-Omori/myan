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
$ git reset --hard HEAD^    # ステージング含む
$ git reset --soft HEAD^    # コミットのみ

# addしたあとのdiff
$ git diff --cached [file]

# 変更の一時的退避 stash
# 変更の保存(saveは省略可)
$ git stash save
# 退避している変更の確認(-pで詳細も見れる)
$ git stash list -p
# 変更内容に含まれるファイル一覧の表示
$ git stash show stash@{スタッシュ番号}
# スタッシュの復活
$ git stash apply stash@{スタッシュ番号}
# スタッシュの削除
$ git stash drop stash@{スタッシュ番号}
# スタッシュの復活と削除
$ git stash pop stash@{スタッシュ番号}
# applyで復活させた変更を「やっぱやめとこ」ってなった時
$ git stash show [適用したstash名] -p | git apply -R

=========
EOF
}
