# main.sh

##Easy-cron启动
# 更改Easy-cron工作目录
ecpath=$(pwd|cut -d \/ -f4)
ecconfpath=$(cat config.yaml|grep /home/runner|awk '{print$3}'|sed 's/"//g'|cut -d \/ -f4|head -n 1)
sed -i "s/$ecconfpath/$ecpath/g" config.yaml
# 赋予Easy-cron及脚本可执行权限
chmod +x easy-cron
chmod +x dog.sh
# 启动Easy-cron
./easy-cron >/dev/null 2>&1 &

##Nginx启动
# 更改Nginx工作目录
home=$(pwd)
ngpath=$(echo $home/html|sed 's/\//\\\//g')
ngconfpath=$(cat conf/nginx.conf|grep /home/runner|awk '{print$2}'|sed 's/;//g'|sed 's/\//\\\//g'|head -n 1)
sed -i "s/$ngconfpath/$ngpath/g" conf/nginx.conf
# 设置Nginx路径
NGINX_PREFIX_PATH="/tmp/local/nginx"
# 创建Nginx目录
mkdir -p $NGINX_PREFIX_PATH
mkdir -p $NGINX_PREFIX_PATH/sbin/nginx
mkdir -p $NGINX_PREFIX_PATH/modules
mkdir -p $NGINX_PREFIX_PATH/conf
mkdir -p $NGINX_PREFIX_PATH/logs
# 复制用户配置
rm -rf $NGINX_PREFIX_PATH/conf $NGINX_PREFIX_PATH/html
cp -rp conf html $NGINX_PREFIX_PATH
# 赋予Nginx可执行权限
chmod +x nginx
# 启动Nginx
./nginx
