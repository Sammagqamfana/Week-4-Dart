// collections_demo.dart
void main() {
  // List example
  List<String> names = ["Sam", "Lebo", "Zee"];
  names.add("John");
  names.remove("Lebo");
  print("List:");
  for (var name in names) {
    print(name);
  }

  // Set example
  Set<int> numbers = {1, 2, 3, 4};
  numbers.add(5);
  numbers.remove(3);
  print("\nSet:");
  for (var num in numbers) {
    print(num);
  }

  // Map example
  Map<String, String> countries = {
    "Kenya": "Nairobi",
    "South Africa": "Pretoria",
  };
  countries["Ghana"] = "Accra";

  print("\nMap:");
  countries.forEach((key, value) {
    print("$key → $value");
  });
}
