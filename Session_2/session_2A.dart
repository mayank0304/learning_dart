// Functions in Stack
// Reference Copy on Multi Value Container

void squareOfNumbers(nums) {
  print("A. nums are: $nums and hashcode is: ${nums.hashCode}");

  for (var i = 0; i < nums.length; i++){
    nums[i] = nums[i] * nums[i];
  }

  print("B. nums are: $nums and hashcode is: ${nums.hashCode}");
}

void main(){
  var numbers = [10, 20, 30, 40, 50];

  print("1. Numbers are: $numbers and Hashcode is: ${numbers.hashCode} ");
  print("1. Number at index zero is: ${numbers[0]} and It's Hashcode is: ${numbers[0].hashCode} ");

  squareOfNumbers(numbers);

  print("2. Numbers are: $numbers and Hashcode is: ${numbers.hashCode} ");
  print("2. Number at index zero is: ${numbers[0]} and It's Hashcode is: ${numbers[0].hashCode} ");
}