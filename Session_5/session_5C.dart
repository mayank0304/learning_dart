class Dish{
  String name;
  double price;

  Dish({
    required this.name,
    required this.price
  }){}

  @override
  toString() => "$name | $price"; 
}

void main(){
  var dish1 = Dish(name: "Dal Makhni", price: 400);
  var dish2 = Dish(name: "Noodles", price: 200);
  var dish3 = Dish(name: "Samosa", price: 20);
  var dish4 = Dish(name: "Burger", price: 100);

  var dishes = [dish1, dish2, dish3, dish4];

  print(dishes);

  var cart = [dish1, dish2, dish3];

  // cart.reduce((value, e) => value + e.price);
  var cartValue = cart.map((e) => e.price).reduce((value, element) => value + element);
  print(cartValue);
}