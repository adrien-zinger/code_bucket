with (import <nixpkgs> {});
mkShell {
  buildInputs = [
    gcc
    valgrind
  ];
}
