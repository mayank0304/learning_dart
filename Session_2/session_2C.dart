int getMax(var data, int length){
  if(length == 1){
    return data[0];
  }
  else{
    var previous = getMax(data, length - 1);
    var current = data[length - 1];

    if(previous > current){
      return previous;
    }
    else {
      return current;
    }
  }

}

void main(){
  var numbers = [1, 5, 3, 7, 2];
  int result = getMax(numbers, numbers.length);
  print("Maximum is: $result");
}