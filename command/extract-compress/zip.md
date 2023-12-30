
`apt install unzip`  



* 把文件解压到当前目录下  `unzip test.zip`   


* 如果要把文件解压到指定的目录下，需要用到-d参数。`unzip -d /mydir test.zip`  



* 解压的时候，有时候不想覆盖已经存在的文件，那么可以加上`-n`参数
`unzip -n test.zip`
`unzip -n -d /temp test.zip`



* 只看一下zip压缩包中包含哪些文件，不进行解压缩  `unzip -l test.zip`



* 查看显示的文件列表还包含压缩比率  `unzip -v test.zip`



* 检查zip文件是否损坏  `unzip -t test.zip`  



* 将压缩文件 test.zip 在指定目录 tmp 下解压缩，如果已有相同的文件存在，要求 unzip 命令覆盖原先的文件 `unzip -o test.zip -d /tmp/`  

