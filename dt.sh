#!/bin/bash

trap ctrl_c INT

function ctrl_c() {
        echo "** Trapped CTRL-C"
        docker kill $ID
}

if [ -z $1 ]
then
    docker run --rm diginex/dt
    exit 0
fi

#if [ $1 = 'init' ]
#then
#    docker run --rm diginex/dt init | sh
#    exit 0
#fi

if [ $1 = 'ng' ] && [ $2 = 'serve' ]
then
    ID=`docker run --network=host -t -d -v $(pwd):/workspace diginex/dt $@`
    docker attach $ID
    exit 0
fi

docker run --network=host -it -v $(pwd):/workspace diginex/dt $@