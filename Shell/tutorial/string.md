
先赋值一个变量为一个路径，如下：  `file=/dir1/dir2/dir3/my.file.txt`  


<br><br>

`${file#*/}`    拿掉第一条 / 及其左边的字符串     dir1/dir2/dir3/my.file.txt  
`${file##*/}`   拿掉最后一条 / 及其左边的字符串    my.file.txt  
 


<br><br>

`${file%/*}`    拿掉最后一条 / 及其右边的字符串    /dir1/dir2/dir3  
`${file%%/*}`   拿掉第一条 / 及其右边的字符串     (空值)  



<br><br>

`${file:0:5}`            　　　提取最左边的 5 个字节    　　　　　　　　　　　　/dir1  
`${file:5:5}`            　　　提取第 5 个字节右边的连续 5 个字节    　　　　　/dir2  

`${file/dir/path}`            将第一个 dir 提换为 path    　　　　　　　　　 /path1/dir2/dir3/my.file.txt  
`${file//dir/path}`    　　　　将全部 dir 提换为 path    　　　　　　　　　　　/path1/path2/path3/my.file.txt  

`${#file}`    　　　　　　　　　 获取变量长度    　　　　　　　　　　　　　　　　　27      