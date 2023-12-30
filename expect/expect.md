
expect 是 用来 进行自动化控制 和 测试的工具。  
主要 是 和 交互式软件 telnet、ftp、ssh 等 进行 自动化 的交互。

检测是否安装：  `ls /usr/bin | grep expect`  

如果不存在，则进行安装：  `apt-get install expect`  



`spawn` 是 进入 expect 环境后 才可以执行的 expect 内部命令。 

expect 是一种脚本语言，它能够 代替 我们 实现 与终端的交互，
我们 不必 再守候在 电脑旁边 输入密码，或是根据系统的输出 再运行 相应的命令。  
