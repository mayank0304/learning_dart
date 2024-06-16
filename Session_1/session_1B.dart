void main() {
  // List superHeros = ["tony stark", "steve rogers", "natasha ramanoff", "thor", "bruce banner", "clint barton", "clint barton"]; 
  // Duplicacy Allowed in List  
  // Hetrogeneous Container -> Multi Value Container

  // List superHeros = ["tony stark", "steve rogers", "natasha ramanoff", "thor", "bruce banner", "clint barton"];
  // Homogenous Container

  // List<String> superHeros = ["tony stark", "steve rogers", "natasha ramanoff", "thor", "bruce banner", "clint barton", 10]; (Not Allowed)
  List<String> superHeros = ["tony stark", "steve rogers", "natasha ramanoff", "thor", "bruce banner", "clint barton"];

  // Printing full list
  print(superHeros);
  print(superHeros.hashCode);
  print(superHeros.runtimeType);
  print(superHeros.length);

  // Printing elements
  print(superHeros[5]);
  print(superHeros[5].runtimeType);
  print(superHeros[5].hashCode);
  print(superHeros[6].hashCode);
}