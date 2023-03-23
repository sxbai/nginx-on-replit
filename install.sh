echo "Nginx v1.23.3一键搭建脚本"
echo "脚本作者：舒夏"
echo "GitHub开源地址：https://github.com/sxbai/nginx-on-replit"
nix-env -iA nixpkgs.wget
mkdir build
cd build
wget -O .replit https://github.com/sxbai/nginx-on-replit/raw/master/.replit
wget -O replit.nix https://github.com/sxbai/nginx-on-replit/raw/master/replit.nix
cd ..
cp -r build/.replit . && cp -r build/replit.nix .
wget -O main.sh https://github.com/sxbai/nginx-on-replit/raw/master/main.sh
wget -O nginx.tar.gz https://nginx.org/download/nginx-1.23.3.tar.gz
tar -zxvf nginx.tar.gz
cd nginx-1.23.3
./configure --prefix=/home/runner/${REPL_SLUG} --with-stream --with-mail --user=replit --group=replit --with-http_ssl_module --with-http_auth_request_module --with-pcre
make
make install
cd ..
rm -rf build/ && nginx1.23.3.zip
rm -rf nginx-1.23.3/
bash main.sh
echo "Nginx v1.23.3一键搭建脚本"
echo "脚本作者：舒夏"
echo "GitHub开源地址：https://github.com/sxbai/nginx-on-replit"
echo "点击Run按钮，启动Nginx项目! 使用愉快!!!"
rm -rf README.md
