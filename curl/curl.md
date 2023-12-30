
在 Linux 中 curl 是一个利用 URL 规则
在命令行下工作的
文件传输工具，可以说是一款很强大的 http 命令行工具。
它支持文件的上传和下载，是综合传输工具，
但按传统，习惯称 url 为下载工具。  

curl is a tool for transferring data from or to a server.   
It supports these protocols: DICT, FILE, FTP, FTPS, GOPHER, GOPHERS, HTTP, HTTPS, IMAP, IMAPS, LDAP, LDAPS, MQTT, POP3, POP3S, RTMP, RTMPS, RTSP, SCP, SFTP, SMB, SMBS, SMTP, SMTPS, TELNET or TFTP.   
The command is designed to work without user interaction.  


curl offers a busload of useful tricks 
like 
proxy support, 
user authentication, 
FTP upload, 
HTTP post, 
SSL connections, 
cookies, 
file transfer resume 
and more. 


curl is powered by libcurl for all transfer-related features. See libcurl(3) for details.


(To transfer multiple files use wget or FTP.)  



语法：  
`curl [options] [URL...]`  


```
常见参数：
-A/--user-agent <string>              设置用户代理发送给服务器
-b/--cookie <name=string/file>    cookie字符串或文件读取位置
-c/--cookie-jar <file>                    操作结束后把cookie写入到这个文件中
-C/--continue-at <offset>            断点续转
-D/--dump-header <file>              把header信息写入到该文件中
-e/--referer                                  来源网址

-r/--range <range>                      检索来自HTTP/1.1或FTP服务器字节范围

-f/--fail                           连接失败时不显示http错误                                    
-s/--silent	                        Silent or quiet mode. Don't show progress meter or error messages.
-S/--show-error                     When used with -s, --silent, it makes curl show an error message if it fails.
-o/--output                         把输出写到该文件中
-O/--remote-name                    把输出写到该文件中，保留远程文件的文件名


-T/--upload-file <file>                  上传文件
-u/--user <user[:password]>      设置服务器的用户和密码
-w/--write-out [format]                什么输出完成后

-x/--proxy <host[:port]>              在给定的端口上使用HTTP代理
-#/--progress-bar                        进度条显示当前的传送状态



-i/--include
Include the HTTP response headers in the output. The HTTP response headers can include things like server name, cookies, date of the document, HTTP version and more...


```
