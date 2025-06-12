{
  description = "A Nix-flake-based Nix pwning environment";

  inputs.nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0.1";

  outputs =
    inputs:
    let
      supportedSystems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
      forEachSupportedSystem =
        f:
        inputs.nixpkgs.lib.genAttrs supportedSystems (
          system:
          f {
            pkgs = import inputs.nixpkgs { inherit system; };
          }
        );
    in
    {
      devShells = forEachSupportedSystem (
        { pkgs }:
        {
          default = import ./tools/default.nix { inherit pkgs; };
          reversing = import ./tools/reversing.nix { inherit pkgs; };
          exploitation = import ./tools/exploitation.nix { inherit pkgs; };
          web = import ./tools/web.nix { inherit pkgs; };
        }
      );
    };
}
