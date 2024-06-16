void main(){
  Set<String> superHeros = {"tony stark", "steve rogers", "natasha ramanoff", "thor", "bruce banner", "clint barton"};
  // Doesn't allow duplicacy, will not give error but surely warn you

  print(superHeros);
  print(superHeros.hashCode);
  print(superHeros.runtimeType);
  print(superHeros.length);

  // print(superHeros[1]); Doesn't support indexing

  // as there is no indexing means u can't access elements directly
  // So you can access elements by loops and iterators or 
  // You can first convert set into a list then access elemenst by .toList()

}