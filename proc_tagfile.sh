
tf="$HOME/.tagfile"


add_tag ()
{
    $tf >> "$1: $2"
    echo "Added tag"
}
