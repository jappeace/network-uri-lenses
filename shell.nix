{ pkgs ? (
   let 
    hostPkgs = import <nixpkgs> {};
    pinnedPkgs = hostPkgs.fetchFromGitHub {
      owner = "NixOS";
      repo = "nixpkgs-channels";
      # nixos-unstable as of 2017-11-13T08:53:10-00:00
      rev = "1ba77eeb22a559c1fef96b830a3ca201f0dea171";
      sha256 = "0pz2c2fy36va1zq018vgiiikmwp0b1imlfa9k7l2pq5j1v81inmg";
    };
  in
  import pinnedPkgs {}
 )
}:
let 
    build = pkgs.haskellPackages.callPackage ./default.nix { };
in 
pkgs.stdenv.mkDerivation {
  name = "network-uri-lenses";
  buildInputs = [
    pkgs.haskellPackages.hpack
    pkgs.cabal-install
    pkgs.ghc
  ] ++ build.buildInputs;
    
}
