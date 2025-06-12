{ pkgs }:
pkgs.mkShell {
  packages = with pkgs; [
    ghidra
    radare2
    cutter
  ];
}
