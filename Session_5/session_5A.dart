class Restaurant {
  String name;
  double rating;

  Restaurant({
    required this.name,
    required this.rating
  }){}

  toString() => "$name | $rating";
}

void main(){
  List<Restaurant> restaurants = [
    Restaurant(name: "John's Pizza", rating: 3.8),
    Restaurant(name: "Dominos", rating: 3.9),
    Restaurant(name: "Punjabi Grill", rating: 5.0),
    Restaurant(name: "Canadian Pizza", rating: 4.4),
    Restaurant(name: "chilis", rating: 4.2)
  ];

  print("All Restaurants: ");
  restaurants.forEach((all) => print(all));

  print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");

  // To find some values from a list we can use ( WHERE, which is a higher order function)
  restaurants.where((restaurant) => restaurant.rating >= 4.0).toList().forEach((best) => print(best));

  // bestRestaurants.forEach((best) => print(best));
}
// When i pass map required is mandotary