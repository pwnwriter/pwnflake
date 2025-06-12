{ pkgs }:
pkgs.mkShell {
  packages = with pkgs; [
    sqlmap
    zap
    burpsuite
  ];
}
