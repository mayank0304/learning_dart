void main()
{
  print("Hello, world!");

  print("~~~~~~~~~~~~~~~~~~~~~~~~~~");

  // Containers (contains some type of data)

  // Single value container (contain single value, string, number)
  // Multi Value container (conatin more than one value)
  // homogeneous mvc -> contain more than one value but all values are of same type
  // heterogeneous mvc -> contain more than one values and all values are of different kind.

  // Data types
  // Number: int, double

  // var, dynamic and Object
  int followers = 344;
  // var followers = 344;
  // dynamic followers = 344; 
  // Object followers = 344;
  double viewTime = 4.5;

  //print("followers: " + followers.toString());
  //print("viewTime: " + viewTime.toString());
  print("followers: $followers ViewTime: $viewTime");

  print("~~~~~~~~~~~~~~~~~~~~~~~~~~");

  var age = 20;
  // age = "I am old"; 
  // This is not allowed(vice-versa)
  print("Age is $age");
  print("Age is " + age.runtimeType.toString()); // Tells about the type of variable or Data structure.
  print("Age is " + age.hashCode.toString()); // Tells about the address of the variable or data structure.

  int year = 2020;
  // year = "hello";
  // This is not allowed(vice-versa)
  print("year is $year");
  
  dynamic number = 24;
  number = "this is number";
  // This is allowed(even vice- versa)
  print("number is $number");

  Object istrue = 24;
  istrue = "this is number";
  // Allowed
  print("istrue is $istrue");  

  print("~~~~~~~~~~~~~~~~~~~~~~~~~~");

  // STRING 
  String message = "This is an awesome day";
  // message = 10; (Not allowed)

  //String message = 'This is an awesome day'; (single quotes can also be used)
  print("Message is: $message");

  // NULL 
  String? msg = null; // Optional (which can hold null)
  print("Message is: $msg");
  // Null Safety -> with ! operator -> we will explore in flutter

  print("~~~~~~~~~~~~~~~~~~~~~~~~~~");

  bool isInternetEnabled = true;
  bool isGPSEnabled = false;

  print("isInternetEnabled is: $isInternetEnabled");
  print("isGPSEnabled is: $isGPSEnabled");
}

// index.dart -> index.ir -> transalted to JavaScript.