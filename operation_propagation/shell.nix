with (import <nixpkgs> {});
mkShell {
  buildInputs = [
    (vscode-with-extensions.override {
      vscodeExtensions = with pkgs.vscode-extensions; [
	      eamodio.gitlens
	      yzhang.markdown-all-in-one
	      streetsidesoftware.code-spell-checker
      ];
    })
  ];
}
