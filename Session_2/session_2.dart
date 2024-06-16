// Functions in Stack
// Reference Copy on Single Value Container

void square(var num){
  print("A. number is $num and hashcode is: ${num.hashCode}"); // 10 |1001
  num = num * num;
  print("A. number is $num and hashcode is: ${num.hashCode}"); // 100 | 2001
}

void main(){
  var number = 10;
  print("A. number is: $number and hashcode is: ${number.hashCode}"); // 10 | 1001
  square(number);
  print("A. number is: $number and hashcode is: ${number.hashCode}"); // 10 | 1001

}