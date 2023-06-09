{pkgs, ...}: {
  imports = [
    ./fish
    ./git
    ./fzf.nix
    ./tmux.nix
  ];

  home.packages = with pkgs; [
    nil
    nixpkgs-fmt

    wget
    tldr
    parsec-bin
    jq
    lsd
    bat
    starship
    vim
    nodejs
    yarn
    nodePackages.pnpm

    # FIXME: Python area, should be in a separate file
    # Python
    python311Full

    # Playwright
    playwright

    # Direnv
    direnv
  ];

  programs.nix-index.enable = true;
  programs.command-not-found.enable = false;

  # home.sessionVariables.PLAYWRIGHT_SKIP_VALIDATE_HOST_REQUIREMENTS = "true";
}
