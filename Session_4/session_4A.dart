// Sorting Algorithm on Nike Shoes's [High to Low & Low to High]

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

void bubble(var data, int sort){
    var n = data.length;
      for (var i = 0; i < n-1; i++){
        for (var j = 0; j < n - i - 1; j++){
          if(sort == 0);
            if (data[j].price > data[j+1].price){
              var temp = data[j];
              data[j] =data[j+1];
              data[j+1] = temp;
            }
          if(sort == 1){
            if (data[j].price < data[j+1].price){
              var temp = data[j];
              data[j] =data[j+1];
              data[j+1] = temp;
            }
          }
        }  
      }
}

void main(){
  // Shoe shoe1 = Shoe(name: "Nike Air max 97", gender: "Men", color: "white", price: 16995);
  // Shoe shoe2 = Shoe(name: "Nike Dunk Low Retro", gender: "Men", color: "black", price: 8295);
  // Shoe shoe3 = Shoe(name: "Nike Motiva", gender: "Men", color: "grey", price: 9695);
  // Shoe shoe4 = Shoe(name: "Jumoman Mvp", gender: "Men", color: "blue", price: 15295);

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

  // List Shoes = [shoe1, shoe2, shoe3, shoe4];
  
  print("Actual Shoes List:");
  for (int idx = 0; idx < Shoes.length; idx++) {
    Shoes[idx].display();
  }
 
  print("************************************************************************");

  print("Sorted Shoes List on price:");
  bubble(Shoes, 0);
  for (int idx = 0; idx < Shoes.length; idx++) {
    Shoes[idx].display();
  }
}