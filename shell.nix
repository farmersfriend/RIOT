{ pkgs ? import <nixpkgs> {} }:
  let
    riotgen = p: p.callPackage ./nix/riotgen.nix {};
    customPython = pkgs.python3Full.withPackages (p: with p; [
      pyserial
      twisted
      (riotgen p)
    ]);
  in
  pkgs.mkShell {
    # nativeBuildInputs is usually what you want -- tools you need to run
    nativeBuildInputs = with pkgs; [
      wget curl
      neovim
      which unzip
      gcc-arm-embedded gnumake
      openocd
      customPython
      stlink
    ];
}
