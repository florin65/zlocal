#!/bin/bash - 
#===============================================================================
#
#          FILE: rust-init.sh
# 
#         USAGE: ./rust-init.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 06.01.2017 14:53
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

#curl https://sh.rustup.rs -sSf | sh -s -- --help

curl https://sh.rustup.rs -sSf | sh

