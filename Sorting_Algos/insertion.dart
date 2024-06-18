dynamic insert(arr, n){
  for (var i = 0; i < n; i++) {
    var j = i;
    while (j > 0 && arr[j-1] > arr[j]) {
      var temp = arr[j - 1];
      arr[j - 1] = arr[j];
      arr[j] = temp;
      j--;
    }
  }
  return arr;
}

void main(){
  var array = [14, 9, 15, 12, 6, 8, 13];
  var len = array.length;
  var sortedArr = insert(array, len);
  print(sortedArr);
}