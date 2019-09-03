
safe_init ()
{
    touch $HOME/.tagfile
    echo "[INFO] Created tagfile..."
    exit
}


force_init ()
{
    rm $HOME/.tagfile
    touch $HOME/.tagfile
    echo "[INFO] Created new tagfile..."
    exit
}
