// final_assignment.dart
// combines everything into one simple program

import 'dart:io';

void main() async {
  List<Map<String, dynamic>> logs = [];

  print("Simple Dart App (type 'exit' to stop)\n");

  while (true) {
    stdout.write("Enter text: ");
    String input = stdin.readLineSync() ?? "";

    if (input.toLowerCase() == "exit") break;

    String reversed = input.split('').reversed.join();
    String upper = input.toUpperCase();
    int length = input.length;

    var entry = {
      "original": input,
      "reversed": reversed,
      "upper": upper,
      "length": length,
      "time": DateTime.now().toString(),
    };

    logs.add(entry);

    print("\nReversed: $reversed");
    print("Uppercase: $upper");
    print("Length: $length");
    print("Time: ${entry['time']}\n");
  }

  // write all logs to file
  try {
    var file = File("results.txt");
    var sink = file.openWrite();
    for (var log in logs) {
      sink.writeln(log);
    }
    await sink.close();
    print("Data saved to results.txt");
  } catch (e) {
    print("File error: $e");
  }

  // date and time example
  var now = DateTime.now();
  print("\nToday: $now");
  print("Next week: ${now.add(Duration(days: 7))}");
}
