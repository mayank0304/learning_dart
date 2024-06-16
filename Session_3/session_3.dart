/* OOPS
  Object Oriented programming structure

  # What is an object?
  1. In real life
    Object is anything that exists
    eg: chair, table, laptop, etc...

    Class: Its representation of object (Drawing of an object) 
      // Design is class from which object will be created

  2. Object in Computer science
    It is a storage container that we can design according to your requirement
    It is specifically targeted to create a mutli value container
    homo/hetro

    Class: In a code,which represents object in a memory.

  Principles of OOPS
    1. Think of object
    2. write its class (representation of an object)
    3. Create Real Object from class in the memory.


  Requirement/ Scope of work
    John wants to get a Food delivery App developed. 
    App should have restaurants listed and every restaurant should have a menu of dishes.
    Customer should be able to add dishes to cart and place the order to restaurant
    Delivery pperson should visit restaurant, pickup order and deliver to customer
    Customer can pay in multiple payment methods.

    1. 
    Think/Find/Trace Object in requirement
    Object is the one, which has lot of data associated to it

     [Object]: [Attributes...]
     eg: Customer: name, phone, email, gender, address, etc...
         Restaurant: name, phone, email, address, ratings, operatingHours, menu etc...
         Dish: name, price, category, rating etc...
         Menu: name, numOfDishes, dishes
         Order: orderOfNumber, customer, restaurant, dishes, total, taxes, etc.  

         Once, we have trcaed/found objects i.e. written all of the reuired details which needs to be used in software

         Then, find relationship betweenn objects...
         1. Has-A
            1 to 1 
              1 Restaurant has 1 menu
            1 to many
              1 Restaurant has many menus
              1 Customer has many address
              1 Customer can place many Orders
            many to many
              many Customer can place many Orders
         2. Is-A
            Inheritance
            eg: Profile Object, Customer Object, Restaurant Object
            Profile is parent to Customer and Restaurant
*/


// 1. Think of an object
// Dish: name, price, category, rating

// 2. Create its class (Representaion of an object)

// We are coding the way object should be in memory
class Dish{
  // Dish class represents Dish Object
  // Attributes of Dish Object and has nothing to do with the class
  // this class is structure of an object dish

  String? name;
  int? price;
  String? category;
  double? rating;
}

void main(){
  // Dish1
  Dish dish1 = Dish();
  print(dish1);
  print(dish1.runtimeType);
  print(dish1.hashCode);

  // Oparations on Object
  // 1. Read operation
  print("Details of dish1: ${dish1.name}, ${dish1.price}, ${dish1.category}, ${dish1.rating }");

  // 2. Write operation
  dish1.name = "Dal Makhni";
  dish1.price = 300;
  dish1.category = "Dal Makhni";
  dish1.rating = 4.5;

  print("Details of dish1: ${dish1.name}, ${dish1.price}, ${dish1.category}, ${dish1.rating }");

  // 2. Update operation
  dish1.name = "Maharaja Dal Makhni";
  dish1.price = 350;

  print("Details of dish1: ${dish1.name}, ${dish1.price}, ${dish1.category}, ${dish1.rating }");

  // Delete Operation: Deletion is part of Garbage Collector.
  // you as developer is relaxed. Objects which are no longer required will be deletd automatically.

  // Dish 2
  Dish dish2 = Dish(); 
  dish2.name = "Butter Paneer Masala";
  dish2.price = 450;
  dish2.category = "Indian Veg";
  dish2.rating = 4.8;

  print(dish2);
  print(dish2.runtimeType);
  print(dish2.hashCode);

  // Oparations on Object
  // Read operation
  print("Details of dish2: ${dish2.name}, ${dish2.price}, ${dish2.category}, ${dish2.rating }");

  // Dish 3
  Dish dish3 = dish1;
  print("Details of dish3: ${dish3.name}, ${dish3.price}, ${dish3.category}, ${dish3.rating }");

  dish3.price = 570;
  print("Details of dish1: ${dish1.name}, ${dish1.price}, ${dish1.category}, ${dish1.rating }");
  print("Details of dish3: ${dish3.name}, ${dish3.price}, ${dish3.category}, ${dish3.rating }");

  // Both will get changes because they have same refernce i.e. they have same object

}