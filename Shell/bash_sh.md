
`#!/bin/sh` 是指此脚本使用 `/bin/sh` 来解释执行，`#!` 是特殊的表示符，其后面跟的是解释此脚本的 shell 的路径，是脚本的解释器程序路径，

脚本的内容是由解释器解释的，我们可以用各种各样的解释器来写对应的脚本，比如说 `/bin/csh` 脚本、`/bin/perl` 脚本、`/bin/awk` 脚本，`/bin/sed` 脚本，甚至 `/bin/echo` 等等。`#!/bin/bash`同理。  


## 区别

GNU/Linux 操作系统中的 `/bin/sh` 本是 `bash` (Bourne-Again Shell) 的符号链接，  
但鉴于 `bash` 过于复杂，有人把 `bash` 从 NetBSD 移植到 Linux 并更名为 `dash` (Debian Almquist Shell)，并建议将 `/bin/sh` 指向它，以获得更快的脚本执行速度。  
Dash Shell 比 Bash Shell 小的多，符合 POSIX 标准。  
Ubuntu 继承了 Debian，所以从 Ubuntu 6.10 开始默认是 Dash Shell。

应该说，`/bin/sh` 与 `/bin/bash` 虽然大体上没什么区别，但仍存在不同的标准。  
标记为 `#!/bin/sh` 的脚本不应使用任何 POSIX 没有规定的特性 (如 `let` 等命令, 但 `#!/bin/bash` 可以)。


Debian 曾经采用 `/bin/bash` 更改 `/bin/dash`，目的使用更少的磁盘空间、提供较少的功能、获取更快的速度。  
但是后来经过 shell 脚本测试存在运行问题。  
因为原先在 bash shell 下可以运行的 shell script (shell 脚本)，在 `/bin/sh` 下还是会出现一些意想不到的问题，不是 100% 的兼用。



上面可以这样理解，使用 `man sh` 命令和 `man bash` 命令去观察，  
可以发现 `sh` 本身就是 `dash`，也就更好的说明集成 Debian 系统之后的更改。


可以说，`#!/bin/sh`是`#!/bin/bash`的缩减版。  
