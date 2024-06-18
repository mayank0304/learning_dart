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

  var discPrice = dishes.map((e) => Dish(name: e.name, price: e.price * 0.50)).toList();

  discPrice.forEach((e) => print(e));
  print("~~~~~~~~~~~~~~~~~~~~~~~~");
  dishes.forEach((e) => print(e));


  // List<double> prices = [250.222394, 1100, 242.56, 3256, 254];

  // var stringPrice = prices.map((e) => "\u20b9 ${e.toStringAsFixed(2)}").toList();
  // stringPrice.forEach((e) => print("$e"));
}