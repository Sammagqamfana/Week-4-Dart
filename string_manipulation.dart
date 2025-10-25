// string_manipulation.dart
void main() {
  String firstName = "Sam";
  String lastName = "Magqamfana";

  // Concatenation
  String fullName = firstName + " " + lastName;
  print("Full Name: $fullName");

  // Interpolation
  print("Hello my name is $fullName");

  // Substring
  print("First 3 letters: ${fullName.substring(0, 3)}");

  // Case change
  print("Uppercase: ${fullName.toUpperCase()}");
  print("Lowercase: ${fullName.toLowerCase()}");

  // Reverse
  String reversed = fullName.split('').reversed.join();
  print("Reversed: $reversed");

  // Length
  print("Length: ${fullName.length}");
}
