nix-env -iA nixpkgs.wget
mkdir build
cd build
wget -O .replit https://github.com/sxbai/nginx-on-replit/raw/master/.replit
wget -O replit.nix https://github.com/sxbai/nginx-on-replit/raw/master/replit.nix
cd ..
wget -O main.sh https://github.com/sxbai/nginx-on-replit/raw/master/main.sh
wget -O nginx1.23.3.zip https://github.com/sxbai/nginx-on-replit/raw/master/nginx1.23.3.zip
nix-env -iA nixpkgs.unzip
unzip nginx1.23.3.zip
cd nginx-1.23.3
make install
cd ..
bash main.sh
