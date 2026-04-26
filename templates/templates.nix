{ self, inputs, ... }: let 

in {
  flake.templates.default = self.templates.dendritic;
  
  flake.templates.dendritic = {
      path = ./dendritic;
      description = "Dendritic pattern template using flake-parts";
  };
}