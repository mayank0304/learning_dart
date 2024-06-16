// Recursion

void main(){
  printNumber(1, 10);
}

void printNumber(n, m){
  print(n);

  if(n < m){
    printNumber(n + 1, m);
  }
}