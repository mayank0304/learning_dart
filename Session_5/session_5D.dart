void main(){
  List<double> cartValue = [
    250.2122,
    1100,
    4150.232,
    2343,
    8000,
    1200.333
  ];

  var total = cartValue.reduce((value, e) => value + e);
  var len = cartValue.length;

  var average = total / len;
  print(average.toStringAsFixed(2));

}