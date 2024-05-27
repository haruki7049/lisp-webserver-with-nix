{ pkgs ? import (builtins.fetchTarball https://github.com/NixOS/nixpkgs/archive/057f9aecfb71c4437d2b27d3323df7f93c010b7e.tar.gz) { inherit overlays; }
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
    clack
  ];

  meta = with lib; {
    license = licenses.mit;
  };
}
