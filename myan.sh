#!/bin/bash

source ~/repos/myan/myan_func.sh

set -ue

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

    # chef
    if [ "${COM}" == "chef" ];then
        chef
        break
    fi

    # cp
    if [ "${COM}" == "cp" ];then
        cp
        break
    fi

    # dstat
    if [ "${COM}" == "dstat" ];then
        dstat
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

    # pt
    if [ "${COM}" == "service" ];then
        service
        break
    fi

    # bye
    if [ "${COM}" == "bye" ];then
        break
    fi
done

echo "\\(^o^)/ｵﾜﾀ"

# END
