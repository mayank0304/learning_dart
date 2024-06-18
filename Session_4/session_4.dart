class Dish{
  String name;
  int price;
  int qunatity;

  static int totalItems = 0;
  static int totalDishObjects = 0;


  // static is not the part of object it is part of class
  // Object can access properties of class
  // but class can't access properties of object
  // static can be accesses by accesses by non static

  Dish({
    required this.name,
    required this.price,
    required this.qunatity
  }){
    totalDishObjects++;
    totalItems += qunatity;
  }

  void increment(){
    qunatity++;
    totalItems++;
  }

  void decrement(){
    qunatity--;
    totalItems--;
  }

  String toString(){
    return "[ $name - $price - $qunatity - $totalItems - $totalDishObjects ]";
  }
}

void main(){
  Dish dish1 = Dish(name: "Samosa", price: 20, qunatity: 1);
  Dish dish2 = Dish(name: "Burger", price: 100, qunatity: 1);
  Dish dish3 = dish1;

  dish1.increment();
  dish2.increment();

  // dish1.increment();
  // dish2.increment();

  // dish3.decrement();

  print(dish1);
  print(dish2);
  print(dish3);

}