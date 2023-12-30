

# find

find 是一个基于查找的功能非常强大的命令，其基本语法如下：


```
find [PATH] [option] [action]  
```
`find / -name myfile ` 查找文件名为 myfile 的文件  








### 与时间有关的参数
``` 
-mtime n : n 为数字，意思为在 n 天之前的“一天内”被更改过的文件；  
-mtime +n : 列出在 n 天之前（不含 n 天本身）被更改过的文件名；  
-mtime -n : 列出在 n 天之内（含 n 天本身）被更改过的文件名；  
-newer file : 列出比 file 还要新的文件名  
```
`find /root -mtime 0 ` 在 /root 目录下查找今天之内有改动的文件








### 与用户或用户组名有关的参数
```
-group name : 列出文件所属用户组为 name 的文件  
-uid n : 列出文件所有者的用户ID为 n 的文件  
-gid n : 列出文件所属用户组的用户组ID为 n 的文件  
```
`find /home -user chan` 在目录 /home 中找出所有者为 chan 的文件    












### 与文件权限及名称有关的参数
```
-size [+-]SIZE ：找出比SIZE还要大（+）或小（-）的文件  
-tpye TYPE ：查找文件的类型为TYPE的文件，TYPE的值：一般文件（f)、设备文件（b、c）、 目录（d）、连接文件（l）、socket（s）、FIFO管道文件（p）；  
             
-perm mode ：查找文件权限刚好等于mode的文件，mode用数字表示，如0755；  
-perm -mode ：查找文件权限必须要全部包括mode权限的文件，mode用数字表示  
-perm +mode ：查找文件权限包含任一mode的权限的文件，mode用数字表示  

find . -perm 0755 # 查找当前目录中文件权限的0755的文件  
```
`find . -size +12k` 查找当前目录中大于12KB的文件，注意`c`表示`byte`


