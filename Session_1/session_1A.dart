void main()
{
  // Record

  var gitData = ('Flutter', 150, user: "k_ishant");
  print("Gitdata type:" + gitData.runtimeType.toString());

  print("Git data: ${gitData.$1}");
  print("Git repos: ${gitData.$2}");
  print("Git user: ${gitData.user}");

  dynamic dart = ('Flutter', 1500 ,"mayank", true, user : "no one");
  print("Dart type:" + dart.runtimeType.toString());
  
  print("Data 1: ${dart.$1}");
  print("Data 2: ${dart.$2}");
  print("Data 3: ${dart.user}");

 // record can't be declared using string or int because it will hold multi values, string and int are for single value
}