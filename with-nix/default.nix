{ pkgs ? import <nixpkgs> { inherit overlays; }
, lib ? pkgs.lib
, cl-nix-lite ? import (builtins.fetchTarball https://github.com/hraban/cl-nix-lite/archive/c64a7994c556bab132ea19827e279dbd2b7576a3.tar.gz)
, overlays ? [ cl-nix-lite ]
, lispPackagesLite ? pkgs.lispPackagesLite
}:

lispPackagesLite.lispDerivation rec {
  name = "lisp-webserver";
  src = lib.cleanSource ./.;
  lispSystem = name;
  dontStrip = true;

  lispDependencies = with pkgs.lispPackagesLite; [
  ];

  meta = with lib; {
    license = licenses.mit;
  };
}
