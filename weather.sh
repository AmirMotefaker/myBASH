# Code by AmirMotefaker

# Weather

#!/bin/bash

case $1 in
-h | --help)
    echo "Short option     Long option     Description"
    echo "-h               --help          show help"
    echo "-l               --location      show weather"
    ;;
-l | --location)
    curl https://wttr.in/$2
    ;;
*)
    curl https://wttr.in/
    ;;
esac
