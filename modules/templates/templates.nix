{}: let 

in {
  flake.templates.dendritic = {
      path = ./templates/dendritic;
      description = "Dendritic pattern template using flake-parts";
  };
}