#!/bin/bash

sudo apt-get install screen

screen=$"n2n"
cmd=$"./n2n_client_linux"

sudo chmod +x n2n_client_linux
sudo chmod +x edge
pkill n2n
screen -dmS $screen
screen -x -S $screen -p 0 -X stuff "$cmd"
screen -x -S $screen -p 0 -X stuff $'\n'
screen -r $screen