
# chmod

该命令用于改变文件的权限，一般的用法如下：

```
chmod [-R] xyz 文件或目录  

-R：进行递归的持续更改，即连同子目录下的所有文件都会更改  

同时，chmod还可以使用u（user）、g（group）、o（other）、a（all）和+（加入）、-（删除）、=（设置）跟rwx搭配来对文件的权限进行更改。
```



`chmod 0755 myfile`  把 myfile 的文件权限改变为-rxwr-xr-x    
`chmod g+w myfile`  向 myfile 的文件权限中加入用户组可写权限  