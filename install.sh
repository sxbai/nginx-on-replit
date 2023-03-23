echo "Nginx v1.23.3一键搭建脚本"
echo "脚本作者：舒夏"
echo "GitHub开源地址：https://github.com/sxbai/nginx-on-replit"
nix-env -iA nixpkgs.wget
wget -O nginx.zip https://github.com/sxbai/nginx-on-replit/raw/master/nginx.zip
nix-env -iA nixpkgs.unzip
unzip nginx.zip
rm -rf nginx.zip
bash main.sh
echo "Nginx v1.23.3一键搭建脚本"
echo "脚本作者：舒夏"
echo "GitHub开源地址：https://github.com/sxbai/nginx-on-replit"
echo "点击Run按钮，启动Nginx项目! 使用愉快!!!"
rm -rf README.md
