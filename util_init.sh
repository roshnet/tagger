
safe_init ()
{
    touch $HOME/.tagfile
    echo "Created tagfile..."
}


force_init ()
{
    rm $HOME/.tagfile
    touch $HOME/.tagfile
    echo "Created new tagfile..."
}
