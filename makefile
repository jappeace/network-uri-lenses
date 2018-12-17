hpack:
	hpack ./

build: hpack
	cabal new-build ./

sdist: hpack
	cabal new-sdist
