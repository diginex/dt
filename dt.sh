#!/bin/sh

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

docker run --network=host --rm -it -v $(pwd):/workspace diginex/dt $@