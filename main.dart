import 'dart:io';

void main() {
  try {
    stdout.write("Enter a number: ");
    final input =
        stdin.readLineSync() ?? ""; // Provide an empty string as default

    final number = double.tryParse(input);

    if (number == null) {
      print("Invalid input. Please enter a valid numeric value.");
    } else if (number > 10) {
      print("Your number is greater than 10");
    } else if (number < 10) {
      print("Your number is less than 10");
    } else {
      print("Your number is equal to 10");
    }
  } catch (e) {
    print("An error occurred: $e");
  }
}
