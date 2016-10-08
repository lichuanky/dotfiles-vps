## Hard info
cat /proc/cpuinfo
cat /proc/meminfo
free –m

## Disk IO
dd if=/dev/zero of=test bs=64k count=4k oflag=dsync
dd if=/dev/zero of=test bs=8k count=256k conv=fdatasync

## Test speed
wget https://cachefly.cachefly.net/100mb.test
wget freevps.us/downloads/bench.sh -O - -o /dev/null | bash

## OneinStack(https://oneinstack.com/)
yum -y install wget screen curl python   #for CentOS/Redhat
# apt-get -y install wget screen curl python  #for Debian/Ubuntu 
# wget http://aliyun-oss.linuxeye.com/oneinstack-full.tar.gz    #阿里云用户下载
# wget http://mirrors.linuxeye.com/oneinstack-full.tar.gz    #包含源码，国内外均可下载 
wget http://mirrors.linuxeye.com/oneinstack.tar.gz    #不包含源码，建议仅国外主机下载 
tar xzf oneinstack-full.tar.gz cd oneinstack    #如果需要修改目录(安装、数据存储、Nginx日志)，请修改options.conf文件 
screen -S oneinstack    #如果网路出现中断，可以执行命令`screen -r oneinstack`重新连接安装窗口 
./install.sh     #注：请勿sh install.sh或者bash install.sh这样执行
##====== End OneinStack ======
