// add(num1, num2){
//   return num1 + num2;
// }

// Lambda Function in General
// Arrow function
// Here, function is doing a single statement 
add(num1, num2) => num1 + num2;
sub(num1, num2) => num1 - num2;
myfunc(num1, num2) => add(num1, num2) * sub(num1, num2);

printName(name) => print("Hello, $name"); 

void main(){
  print(add(10, 20));
  printName("mayank");
}