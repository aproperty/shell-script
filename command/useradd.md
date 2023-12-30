
`useradd -m chan`   
`usermod -s /bin/bash chan`  
`passwd chan`  
`chown -R chan:chan /home/chan`   


没有权限进行 sudo （`is not in the sudoers file`），解决方法：  
`vim /etc/sudoers`  

修改文件内容：找到 `root    ALL=(ALL)       ALL` 一行，  
在下面插入新的一行，内容是 `chan   ALL=(ALL)       ALL`，   
`:wq!`

`exit`  
