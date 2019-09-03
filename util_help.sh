log_help ()
{
    echo '
Tagger v1 / @roshnet
======================
Below are the subcommands and features that tagger implements.

USAGE: tagger [init | tag | tags | ls | rm] <args>

init:   Initialises tagger.
        Overwrites any old config files if used with "--hard"

tag:    Expects two args - "filepath" and "TAGNAME".
        Adds tag TAGNAME to file at "filepath".
        "filepath" is relative to execution directory.

tags:   Shows a list of all defined tags.

ls:     Expects one arg - TAGNAME.
        Shows all files tagged with TAGNAME.
        If no arg is fed, shows all tagged files with their tags.
'
}
