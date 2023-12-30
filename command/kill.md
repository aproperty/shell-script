

# kill
该命令用于向某个工作（%jobnumber）或者是某个PID（数字）传送一个信号，它通常与`ps`和`jobs`命令一起使用，它的基本语法如下：
```
kill -signal PID  
```
signal的常用参数如下（最前面的数字为信号的代号，使用时可以用代号代替相应的信号。）：
```
9：SIGKILL，强制中断一个进程的进行  

1：SIGHUP，启动被终止的进程  
2：SIGINT，相当于输入ctrl+c，中断一个程序的进行  

15：SIGTERM，以正常的结束进程方式来终止进程  
17：SIGSTOP，相当于输入 Ctrl + z，暂停一个进程的进行  
```

```
# 以正常的结束进程方式来终于第一个后台工作，可用jobs命令查看后台中的第一个工作进程  
kill -SIGTERM %1   
# 重新改动进程ID为PID的进程，PID可用ps命令通过管道命令加上grep命令进行筛选获得  
kill -SIGHUP PID  
```









# killall
该命令用于向一个命令启动的进程发送一个信号，它的一般语法如下：
```
killall [-iIe] [command name]  
```
它的参数如下：
```
-i ：交互式的意思，若需要删除时，会询问用户  
-e ：表示后面接的 command name 要一致，但 command name 不能超过15个字符  
-I ：命令名称忽略大小写  

# 重新启动syslogd  
killall -SIGHUP syslogd 
```
