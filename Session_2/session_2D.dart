//factorial solved using recursion (stack heap model in factorial.img)

int factorial(n){
  if(n == 0){
    return 1; 
  }
  else{
  var fact =  n * factorial(n-1);
  return fact;
  }
}

void main(){
  var n = 3;
  var fact = factorial(n);
  print(fact);
}
