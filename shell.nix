with (import <nixpkgs> {});
let
  env = bundlerEnv {
    name = "gaffaoverflow-webseite-bundler-env";
    inherit ruby;
    gemfile  = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset   = ./gemset.nix;
  };
in stdenv.mkDerivation {
  name = "gaffaoverflow-webseite";
  buildInputs = [ env ]; 
}
