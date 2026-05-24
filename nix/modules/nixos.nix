# nix/modules/nixos.nix — auto-generated from ryu.caixa.lisp
# description: "Fast floating point to string conversion"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.ryu;
in {
  options.services.ryu = {
    enable = lib.mkEnableOption "ryu";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.ryu or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
