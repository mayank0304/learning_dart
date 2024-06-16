class Dish{
  String? name;
  int? price;
  String? category;
  double? rating;

  // Dish Constructor: Same name as that of class name
  // You can only create one constructor 
  // Default Constructor

  // Parameterized Constructor
  Dish(String name, int price, String category, double rating) {
     this.name = name;
     this.price = price;
     this.category = category;
     this.rating = rating;
  }

  String toString(){
    return "[$name - $price - $category - $rating]";
  }
}

void main() {
  var dish1 = Dish("Dal Makhni", 400, "Indian Veg", 4.5);
  var dish2 = Dish("Noodles", 200, "Chinese", 4.7);
  print(dish1);
  print(dish2);
}