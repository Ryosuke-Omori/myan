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
