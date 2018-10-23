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


ID=`docker run --network=host -d -t -v $(pwd):/workspace diginex/dt $@`
docker attach $ID