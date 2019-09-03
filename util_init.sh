
safe_init ()
{
    touch $HOME/.tagfile
    echo "[INFO] Created tagfile..."
}


force_init ()
{
    rm $HOME/.tagfile
    touch $HOME/.tagfile
    echo "[INFO] Created new tagfile..."
}
