#!/bin/bash
 
# set profile 
echo -ne "\033]1337;SetProfile=$@\a"

# ssh login
/usr/bin/ssh "$@"

# set profile(default)
echo -ne "\033]1337;SetProfile=`whoami`\a"
