#!/bin/bash

echo_separator () {
    cols=`tput cols`
    i=0
    while [ $i -lt $cols ]; do echo -n "_"; i=`expr $i + 1`; done; echo
}
