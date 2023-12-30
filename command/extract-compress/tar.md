


# tar

该命令用于对文件进行打包，默认情况并不会压缩，如果指定了相应的参数，它还会调用相应的压缩程序（如`gzip`和`bzip`等）进行压缩和解压。它的常用参数如下：




```
-z 或 --gzip 或 --ungzip 通过 gzip 指令处理备份文件。
-j ：通过 bzip2 的支持进行压缩/解压缩  


-x 或--extract 或 --get 从备份文件中还原文件。注意 -t,-x 不能同时出现在同一条命令中  
-c ：新建打包文件  


-v 或 --verbose 显示指令执行过程。
-f<备份文件> 或 --file=<备份文件> 指定备份文件。

-C<目的目录> 或 --directory=<目的目录> 切换到指定的目录。
```


<br>

`tar -zxvf xxxx.tar.gz -C /usr/local`    
`tar -zcvf xxxx.tar.gz myfolder`  
