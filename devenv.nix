



{ pkgs, ... }: {

  languages.rust = {
    enable = true;
    channel = "nightly";
    targets = [ "wasm32-unknown-unknown" ];
    toolchain = {
      rust-analyzer = pkgs.rust-analyzer;
    };
  };

  packages = [ 
    pkgs.fish 
    pkgs.openssl
  ];
}
