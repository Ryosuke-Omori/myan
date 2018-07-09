# journalctl
function util()
{
    cat <<EOF
======util======
よく使うけど忘れやすいコマンド

-----社内-----
# node.js のパッケージインストール
$ ./scripts/make_public_vendor.sh

# Perl環境でのmigration (m-core時)
$ ./scripts/db/migrate_db.sh -d monococo -t pgsql -h localhost -v 1.15.0

# knife solo cook
$ knife solo cook root@clmono521v -i ~/.ssh/clisys-clst_private

# starletのログ
$ less /logs/svlog-starlet-m-api/current    # CentOS6
$ journalctl                                # CentOS7

# consulステータス確認
clisys@ncmimgwrk531v:~$ consul members | grep ncmimgwrk531v
ncmimgwrk531v   172.20.14.66:8301  alive   client  0.9.3  2         nc1  <default>

# ファイルサーバのマウント切りたい時
$ df                                    # マウント確認1
$ mount                                 # マウント確認2
$ umount //r-omori@clnas1/documents     # マウント解除

-----グローバル-----
# 困ったら
$ yum clean all

# 各テーブルの総サイズと平均サイズを取得(PostgreSQL)
> SELECT relname, reltuples, (relpages / 128) as mbytes, (relpages * 8192.0 / (reltuples + 1e-10)) as average_row_size FROM pg_class ORDER BY mbytes DESC;
================
EOF
}
