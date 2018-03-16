# service
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
