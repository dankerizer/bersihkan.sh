
bersihkan () {
    BASEDIR=$(dirname "$0")
    echo -n "Hapus node_modules (y/n) "
    read NODE
    echo -n "Hapus vendor (y/n) "
    read VENDOR

    if [[ $NODE =~ ^[Yy]$ ]]
        then 
        echo "node akan dihapus"
        find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \;
        else
        echo "node tidak di hapus"
    fi

    if [[ $VENDOR =~ ^[Yy]$ ]] 
      then 
        echo "vendor akan dihapus"
        find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \;
        else
        echo "vendor tidak di hapus"
    fi
}
