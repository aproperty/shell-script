#!/usr/bin/expect -f

set src_dir [lindex $argv 0]

set root [lindex $argv 1]

set host [lindex $argv 2]

set dst_dir [lindex $argv 3]

set password [lindex $argv 4]

####return local
spawn scp -r $src_dir $root$host:$dst_dir
set timeout 300
expect "$root$host's password:"

set timeout 300
send "$password\r"

set timeout 600
send "exit\r"
expect eof