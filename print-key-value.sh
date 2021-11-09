#!/bin/bash

function print_key_value() {
 echo $1 = $(eval "echo \$$1")
}


MY_VAR=varythingy
print_key_value MY_VAR
