#!/bin/bash

ulimit -n 65535
export HISTSIZE=3000
export HISTTIMEFORMAT="%F %T "
export PROMPT_COMMAND='{ msg=$(history 1 | { read x y; echo $y; });logger -p local2.notice "[user=$(whoami)]":$(who am i):[`pwd`]"$msg"; }'
