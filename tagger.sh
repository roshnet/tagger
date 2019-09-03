#! /bin/bash

. ./util_init.sh
. ./proc_end.sh
. ./proc_tagfile.sh


execute ()
{
    if [ $# -lt 1 ]
    then
        end_proc
    fi

    if [ "$1"="init" ]
    then
        echo "init exists"
        if [ "$2"="--hard" ]
        then
            force_init
        else
            safe_init
        fi
    elif [ "$1"="tag" ]
    then
        echo "tag was run"
        if [ $# -lt 3 ]
        then
            end_proc
        else
            add_tag $2 $3
        fi
    fi
}


execute $@
