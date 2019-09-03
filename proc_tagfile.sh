
tf="$HOME/.tagfile"


add_tag ()
{
    $tf >> "$1: $2"
    echo "[INFO] Added tag"
    exit
}
