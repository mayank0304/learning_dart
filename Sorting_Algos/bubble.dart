void bubble(data){
  var n = data.length;
  for (var i = 0; i < n-1; i++){
    for (var j = 0; j < n - i - 1; j++){
      if (data[j] > data[j+1]){
        var temp = data[j];
        data[j] =data[j+1];
        data[j+1] = temp;
      }
    }
  }
}

void main(){
  var numbers = [1, 3, 2, 5, 9, 7];
  print(numbers);
  bubble(numbers);
  print(numbers);

}