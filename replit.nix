{ pkgs }: {
  deps = [
    pkgs.zip
    pkgs.wget
    pkgs.killall
    pkgs.openssl.out
    pkgs.openssl.dev
    pkgs.pcre.out
    pkgs.pcre.dev
    pkgs.zlib.dev
    pkgs.zlib
    pkgs.bash
    pkgs.bashInteractive
  ];
  env = {
    OPENSSL_PATH="${pkgs.openssl.out}";
  };
}
