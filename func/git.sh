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
