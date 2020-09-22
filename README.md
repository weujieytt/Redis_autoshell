# Redis_autoshell
Redis Unauthorized access  for exp

### 这是一个bashshell脚本。

使用前请确保你的linux主机有redis-cli环境
`安装Redis环境`: wget http://download.redis.io/releases/redis-6.0.8.tar.gz
```
tar  -zxvf  redis-6.0.8.tar.gz   # 解压
gcc -v     # 依赖于gcc 如果安装不成功，可以尝试升级gcc版本。
cd  redis-6.0.8
make   # 编译安装
cd src && cp redis-cli /usr/bin/
```
## 使用方法：

chmod +x redis_getshell.sh 

修改redis_getshell.sh内的ip为你的主机监听地址

./redis_getshell.sh  ip.txt 
 
 cat log.txt  进行查看结果。
 

 只有提示全为ok的才为成功写入。
 
 ERR 说明保存失败。
 
no nuch file for directory 说明 /var/spool/cron目录不存在。
