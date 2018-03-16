## cp( scp | rsync )
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
