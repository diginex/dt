#!/bin/sh
if [ -z $1 ]
then
#    cat /ca.sh
    echo "To install:"
    echo "  docker run --rm diginex/dt install | sudo sh"
    echo "Usage:"
    echo "  dt ng serve"
    exit 0
fi

if [ $1 = 'install' ]
then
    cat /install.sh
    exit 0
fi

if [ $1 = 'getScript' ]
then
    cat /dt.sh
    exit 0
fi

exec "$@"