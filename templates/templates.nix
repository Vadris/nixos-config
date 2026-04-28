{ self, inputs, ... }: let 

in {
  flake.templates.default = self.templates.dendritic-system;
  
  flake.templates.dendritic-system = {
      path = ./dendritic-system;
      description = "Dendritic pattern system config template";
  };
  flake.templates.dendritic-shell = {
      path = ./dendritic-shell;
      description = "Dendritic pattern dev shell template";
  };
  flake.templates.blank = {
      path = ./dblank;
      description = "Dendritic pattern dev shell template";
  };
}