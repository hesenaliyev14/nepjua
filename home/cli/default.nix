{pkgs, ...}: {
  imports = [
    ./fish
    ./git
    ./fzf.nix
    ./tmux.nix
    ./node.nix
    ./docker.nix
  ];

  home.packages = with pkgs; [
    nil
    nixpkgs-fmt

    wget
    tldr
    jq
    lsd
    bat
    starship
    vim

    # FIXME: Python area, should be in a separate file
    # Python
    python311Full

    # Direnv
    direnv
    btop
  ];

  # home.sessionVariables.PLAYWRIGHT_SKIP_VALIDATE_HOST_REQUIREMENTS = "true";
}
