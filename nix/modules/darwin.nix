# nix/modules/darwin.nix — auto-generated from ryu.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.ryu; in {
  options.services.ryu = {
    enable = lib.mkEnableOption "ryu";
    package = lib.mkOption { type = lib.types.package; default = pkgs.ryu or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
