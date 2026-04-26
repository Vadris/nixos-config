{}: let 

in {
  flake.templates.default = self.templates.dendritic;
  
  flake.templates.dendritic = {
      path = ./templates/dendritic;
      description = "Dendritic pattern template using flake-parts";
  };
}