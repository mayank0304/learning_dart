class Dish{
  // Attributes are required, they can't be null
  String name;
  int price;
  String category;
  double rating;

  // Parameterized Constructor
  Dish({
    required this.name,
    required this.price,
    required this.category, 
    required this.rating}) {}

  String toString(){
    return "[$name - $price - $category - $rating]";
  }
}

void main() {
  var dish1 = Dish(name: "Dal Makhni", price: 400, category: "Indian Veg", rating: 4.5);
  var dish2 = Dish(name: "Noodles", price: 500, category: "Chinese", rating: 4.7);

  print(dish1);
  print(dish2);
}