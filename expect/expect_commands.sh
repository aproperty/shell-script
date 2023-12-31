#!/usr/bin/expect --

if { [llength $argv] < 4 } {
    puts "Usage: $argv0 ip user passwd port commands timeout"
    exit 1
}

set ip [lindex $argv 0]

set user [lindex $argv 1]
set passwd [lindex $argv 2]

set commands [lindex $argv 3]

set port 22
set yesnoflag 0

set timeout 100


for {} {1} {} {
    # for is only used to retry when "Interrupted system call" occured
    
    spawn /usr/bin/ssh -q -l$user -p$port $ip
    
    expect 	{
        
        "assword:" {
            send "$passwd\r"
            break;
        }
        
        "yes/no)?" {
            set yesnoflag 1
            send "yes\r"
            break;
        }
        
        "FATAL" {
            puts "\nCONNECTERROR: $ip occur FATAL ERROR!!!\n"
            exit 1
        }
        
        timeout {
            puts "\nCONNECTERROR: $ip Logon timeout!!!\n"
            exit 1
        }
        
        "No route to host" {
            puts "\nCONNECTERROR: $ip No route to host!!!\n"
            exit 1
        }
        
        "Connection Refused" {
            puts "\nCONNECTERROR: $ip Connection Refused!!!\n"
            exit 1
        }
        
        "Connection refused" {
            puts "\nCONNECTERROR: $ip Connection Refused!!!\n"
            exit 1
        }
        
        "Host key verification failed" {
            puts "\nCONNECTERROR: $ip Host key verification failed!!!\n"
            exit 1
        }
        
        "Illegal host key" {
            puts "\nCONNECTERROR: $ip Illegal host key!!!\n"
            exit 1
        }
        
        "Connection Timed Out" {
            puts "\nCONNECTERROR: $ip Logon timeout!!!\n"
            exit 1
        }
        
        "Interrupted system call" {
            puts "\n$ip Interrupted system call!!!\n"
        }
    }
}

if { $yesnoflag == 1 } {
    expect {
        "assword:" {
            send "$passwd\r"
        }
        
        "yes/no)?" {
            set yesnoflag 2
            send "yes\r"
        }
    }
}

if { $yesnoflag == 2 } {
    expect {
        "assword:" {
            send "$passwd\r"
        }
    }
}

expect {
    "]" {send "$commands \r"}
    "assword:" {
        send "$passwd\r"
        puts "\nPASSWORDERROR: $ip Password error!!!\n"
        exit 1
    }
}

expect {
    "]" {send "exit\r"}
}

expect eof {
    puts "OK_SSH: $ip\n"
    exit 0;
}
