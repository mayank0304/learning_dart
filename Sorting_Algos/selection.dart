dynamic selection(arr, n) {
  for(var i = 0; i <= n - 2; i++){
    var min = i;
    for (var j = i; j <= n -1 ; j++){
      if (arr[j] < arr[min]){
        min = j;
      }
    }
    var temp = arr[i];
    arr[i] = arr[min];
    arr[min] = temp;
  }
  return arr;
}
void main(){
  var array = [13, 46, 24, 52, 20, 9];
  var len = array.length;
  print("Array is: $array");
  var sortedArr = selection(array, len);
  print("Sorted array is: $sortedArr");
}