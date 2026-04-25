{ self, inputs, ...} :
{
  flake.userAccounts.fynn = {
    fristname = "Fynn";
    lastname = "Jansen";

    groups = [ "wheel" ];

  };
}