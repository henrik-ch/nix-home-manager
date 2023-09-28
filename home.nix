{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "i97henka";
  home.homeDirectory = "/home/i97henka";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.packages = [
    pkgs.jq
    pkgs.gh
    pkgs.ripgrep
  ];
 
  home.sessionVariables = {
    EDITOR = "vim"; # or "nano" "emacs" or similar
  };

  programs.direnv.enable = true;
  programs.direnv.nix-direnv.enable = true;
  programs.fzf.enable = true;
  programs.bat.enable = true;

  programs.git = {
    enable = true;
    userName = "i97henka";
    userEmail = "no@no.no";
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      ".." = "cd ..";
      gst = "git status";
      gil = "gh issue list";
      glo = "git log --oneline";
      gfa = "git fetch --all";
      ggfl = "git push --force-with-lease";
    };
  };
  
  
  

}
