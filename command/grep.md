
# grep

该命令 常用于 分析一行 的信息，若当中 有我们所需要的信息，就将该行 显示出来，  
该命令 通常 与 管道命令一起使用，用于对一些命令的输出 进行 筛选加工 等等，它的简单语法为

```
grep [-acinv] [--color=auto] '查找字符串' filename  
```





常用参数如下：

```
-a ：将binary文件以text文件的方式查找数据  
-c ：计算找到‘查找字符串’的次数  
-i ：忽略大小写的区别，即把大小写视为相同  
-v ：反向选择，即显示出没有‘查找字符串’内容的那一行  
```








```
# 取出文件 /etc/man.config 中包含 MANPATH 的行，并把找到的关键字加上颜色  
grep --color=auto 'MANPATH' /etc/man.config  
# 把 ls -l 的输出中包含字母 file（不区分大小写）的内容输出  
ls -l | grep -i file  
```






