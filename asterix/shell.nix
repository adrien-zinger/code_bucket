{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    dune_3
    ocaml
    ocamlPackages.core
    ocamlPackages.findlib
    ocamlPackages.menhir # it also include ocamllex
    ocamlPackages.stdio
  ];}
