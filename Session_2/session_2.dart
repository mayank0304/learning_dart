void square(var num){
  print("A. number is $num and hashcode is: ${num.hashCode}");
  num = num * num;
  print("A. number is $num and hashcode is: ${num.hashCode}");
}

void main(){
  var number = 10;
  print("A. number is: $number and hashcode is: ${number.hashCode}");
  square(number);
  print("A. number is: $number and hashcode is: ${number.hashCode}");

}