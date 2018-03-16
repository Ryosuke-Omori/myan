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
