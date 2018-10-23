#!/bin/sh
sudo docker run --rm diginex/dt getScript > /usr/local/bin/dt
sudo chmod a+x /usr/local/bin/dt