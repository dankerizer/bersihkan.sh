
buka(){
   
    echo -n "Enter a number: "
    read VAR

    if [[ "$1" == "" ]];
        then
            cd "/Applications/MAMP/htdocs/";           
        else
            cd "/Applications/MAMP/htdocs/$1";
    fi



    if [[ $2 == "php" ]];
            then  phpstorm . 
        else
            echo "-----"
    fi

    clear

}


# Git Shortcode

gitAll(){
    git add .
    if [ [ "$1" != "" ]];
        then
         git commit -m "$1";        
        else 
        git commit -m "update";  
    fi

    if [[ "$2" == "" ]];
        then 
         git push -u origin master;
        else 
         git push -u origin "$1";
    fi    
    
}


bersihkan () {
    BASEDIR=$(dirname "$0")
   # read -p "All node_modules in this directory  $BASEDIR will be delete ? (Y/n) :" -n 1 -r
   # echo "All node_modules in this directory  $BASEDIR will be delete ? (Y/n) :" -n 1 -r
    echo -n "Hapus libray nodejs? (y/n) "
    read NODE
    echo -n "Hapus vendor dari composer? (y/n) "
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
        find . -name 'vendor' -type d -prune -print -exec rm -rf '{}' \;

        else
        echo "vendor tidak di hapus"
    fi
}
