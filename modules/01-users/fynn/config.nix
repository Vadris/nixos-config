{ self, inputs, ...} :
{
  flake.homeConfiguration.fynn = inputs.home-manager.lib.homeManagerConfiguration {
    modules = [
      
    ];
  }
}