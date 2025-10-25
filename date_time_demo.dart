// date_time_demo.dart
void main() {
  var now = DateTime.now();
  print("Now: $now");

  var formatted = "${now.day}-${now.month}-${now.year}";
  print("Formatted: $formatted");

  var parsed = DateTime.parse("2025-10-25");
  print("Parsed date: $parsed");

  var added = now.add(Duration(days: 5));
  print("5 days later: $added");

  var subtracted = now.subtract(Duration(days: 3));
  print("3 days ago: $subtracted");

  var diff = added.difference(now);
  print("Days between now and 5 days later: ${diff.inDays}");
}
