
`lsof`  list open files，是一个列出当前  系统打开文件  的工具。  
  
`lsof -i:端口号`  查看端口占用  




<br><br><br>

`lsof abc.txt`：显示开启文件 abc.txt 的进程  

`lsof -c abc`：显示 abc 进程现在打开的文件  
`lsof -c -p 1234`：列出进程号为 1234 的进程所打开的文件  

`lsof -g gid`：显示归属 gid 的进程情况  

`lsof +d /usr/local/`：显示目录下被进程开启的文件  
`lsof +D /usr/local/`：同上，但是会搜索目录下的目录，时间较长  

`lsof -d 4`：显示使用 fd 为 4 的进程  
`lsof -i -U`：显示所有打开的端口和 UNIX domain 文件  