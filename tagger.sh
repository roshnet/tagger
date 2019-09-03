#! /bin/bash

. ./util_init.sh
. ./proc_end.sh
. ./proc_tagfile.sh

echo ">>>>> $@"

execute ()
{
    if [ $# -lt 1 ]; then
        end_proc
    fi

    case $1 in
        init)
            if [ -z "$2" ]; then
                safe_init
            elif [ "$2"="-f" ]; then
                force_init
            fi
            ;;

        tag)
            if [ -z "$2" -o -z "$3" ]; then
                end_proc
            fi

            if [ -n "$2" -a -n "$1" ]; then
                status=1
            fi

            if [ $status -eq 1 ]; then
                add_tag $2 $3
            fi
            ;;
        *)
            end_proc
            ;;
    esac

}


execute $@
