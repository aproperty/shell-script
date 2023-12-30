
`tcpdump -i any port 25001 -vv -n -X -s 0 -w filename.pcap`

`tcpdump tcp -i eth1 -t -s 0 -c 100 and dst port ! 22 and src net 192.168.1.0/24 -w ./target.cap`
	

	
`tcp`: ip、icmp、arp、rarp 和 tcp、udp、icmp 这些选项等 都要放到第一个参数的位置，用来过滤数据报的类型

`-i eth0`  `-i eth1`  `-i any`  -i 指定某个网卡，any 为本机 全部网卡  指定网络接口的数据包（如果不指定网卡，默认 tcpdump 只会监视第一个网络接口，一般是 eth0 ）

`src net 192.168.1.0/24`: 数据包的源网络地址为 192.168.1.0/24
`dst port ! 22`: 不抓取目标端口是 22 的数据包
`port 25001` : 需要抓包 的端口

`-s 0`: 抓取数据包时 默认 抓取长度为 68 字节。 加上 `-s 0` 后可以抓到 完整的数据包
`-t`: 不显示时间戳
`-c 100`: 只抓取 100 个数据包
`-X`  : 显示 16 进制对应的字符串。

`-w filename.pcap` :  保存的文件名 (可不填)  