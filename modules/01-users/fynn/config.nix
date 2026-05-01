{ self, inputs, ...} :
{
  flake.homeConfigurations.fynn = inputs.home-manager.lib.homeManagerConfiguration {
    modules = [
      
    ];
  };
}