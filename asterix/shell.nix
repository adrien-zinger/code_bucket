{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    ocaml
    ocamlPackages.menhir # it also include ocamllex
    dune_3
    ocamlPackages.core
    ocamlPackages.stdio
  ];}
