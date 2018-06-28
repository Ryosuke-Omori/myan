#!/bin/bash

source $MYAN_HOME/myan_func.sh

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

    # process
    if [ "${COM}" == "process" ];then
        process
        break
    fi

    # process_
    if [ "${COM}" == "process_" ];then
        process_
        break
    fi

    # pt
    if [ "${COM}" == "pt" ];then
        pt
        break
    fi

    # service
    if [ "${COM}" == "service" ];then
        service
        break
    fi

    # less
    if [ "${COM}" == "less" ];then
        less
        break
    fi

    # less
    if [ "${COM}" == "util" ];then
        util
        break
    fi

    # bye
    if [ "${COM}" == "bye" ];then
        break
    fi
done

echo "\\(^o^)/ｵﾜﾀ"

# END
