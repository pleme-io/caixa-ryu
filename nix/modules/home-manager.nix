# nix/modules/home-manager.nix — auto-generated from ryu.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.ryu; in {
  options.programs.ryu = {
    enable = lib.mkEnableOption "ryu";
    package = lib.mkOption { type = lib.types.package; default = pkgs.ryu or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
