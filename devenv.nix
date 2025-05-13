
{ pkgs, ... }: {

  languages.rust = {
    enable = true;
    channel = "nightly";
    targets = [ "wasm32-unknown-unknown" "aarch64-unknown-linux-gnu" ];
    toolchain = {
      rust-analyzer = pkgs.rust-analyzer;
    };
  };

  packages = [ 
    pkgs.fish 
    pkgs.openssl
    pkgs.openssl.dev
    pkgs.pkg-config
    pkgs.rustup
  ];
}
