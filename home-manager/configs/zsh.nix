{ config, ... }: {
    programs.zsh = {
        enable = true;
        enableCompletion = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;
    

        shellAliases = 
        let
            
        in {
            sw = "nh os switch";
            upd = "nh os switch --update";
            hms = "nh home switch";
            gs = "git status";
            ga = "git add";
            gc = "git commit";
            gp = "git push";

        };

        history.size = 10000;
        history.path = "${config.xdg.dataHome}/zsh/history";
    };
}