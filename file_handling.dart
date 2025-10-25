// file_handling.dart
import 'dart:io';

void main() async {
  try {
    var file = File('data.txt');
    await file.writeAsString("Hello from Dart!\n");

    var content = await file.readAsString();
    print("File content: $content");

    var newFile = File('copy.txt');
    await newFile.writeAsString("Copied:\n$content");

    print("Done writing files!");
  } catch (e) {
    print("File error: $e");
  }
}
