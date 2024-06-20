class Shoe{ 
  var name;
  var gender;
  var color;
  var price;

  Shoe({
    required this.name,
    required this.gender,
    required this.color,
    required this.price,
  }){}

  void display(){
    print("Name of Shoe : $name");
    print("color of Shoe : $color");
    print("price of Shoe : $price");
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
  }
}

void main(){

  var Shoes = [
    Shoe(
      name: "Nike Air max 97",
      gender: "Men", 
      color: "white", 
      price: 16995),
    Shoe(
      name: "Nike Dunk Low Retro", 
      gender: "Men", 
      color: "black", 
      price: 8295),
    Shoe(
      name: "Nike Motiva", 
      gender: "Men", 
      color: "grey", 
      price: 9695),
    Shoe(
      name: "Jumoman Mvp",  
      gender: "Men", 
      color: "blue", 
      price: 15295),
    Shoe(
      name: "Nike Air max sc", 
      gender: "Women", 
      color: "beige", 
      price: 7495)];

    print("Actual Shoes List:");
    Shoes.forEach((e) => e.display());

    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");

    print("Sorted Shoes List on price:");
    Shoes.sort((s1, s2) => s1.price.compareTo(s2.price));
    Shoes.forEach((e) => e.display());

}