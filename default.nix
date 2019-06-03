{ mkDerivation, base, hpack, network-uri, stdenv }:
mkDerivation {
  pname = "network-uri-lenses";
  version = "0.2.0.0";
  src = ./.;
  libraryHaskellDepends = [ base network-uri ];
  libraryToolDepends = [ hpack ];
  preConfigure = "hpack";
  homepage = "https://github.com/jappeace/network-uri-lenses#readme";
  description = "Lenses for network-uri";
  license = stdenv.lib.licenses.bsd3;
}
