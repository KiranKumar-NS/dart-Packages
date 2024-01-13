

**Flutter Logs**
Flutter Logs is a simple yet powerful logging utility for Flutter applications. It provides an easy-to-use interface for printing log messages with various customization options, making it a valuable tool for debugging and logging information during development.

**Features**
Print log messages with class names, text colors, and background colors.
Fine-grained control over when to apply text colors and background colors.
Support for different log levels: info, warning, error, and fine.
Easily configurable for debugging purposes.
Installation
To use Flutter Logs in your Flutter project, add the following dependency to your pubspec.yaml file:

**yaml**
Copy code
dependencies:
  flutter_logs: ^1.0.0
Then run:

bash
Copy code
flutter pub get
Getting Started
Import the package:
dart
Copy code
import 'package:flutter_logs/flutter_logs.dart';
Create an instance of the Logs class:
dart
Copy code
Logs logger = Logs(
  className: "MyClass",
  foreground: ANSIColor.green,
  background: ANSIColor.black,
  isDFullTextColor: true,
  isAFullTextColor: false,
);
Use the logger to print log messages:
dart
Copy code
logger.info("This is an information message");
logger.warning("This is a warning message");
logger.error("This is an error message");
logger.fine("This is a fine message");
Customization
Class Name: You can include the class name in log messages by providing it during the logger instantiation.

Text Color and Background Color: Customize the text color and background color for each log level.

Fine-Grained Control: Choose whether to apply text colors and background colors for all messages, fine messages only, or a combination.

**Examples**
Print an information message with a green text color:

dart
Copy code
logger.info("This is an information message");
Print a warning message with a blue text color:

dart
Copy code
logger.warning("This is a warning message");
Print an error message with a red text color:

dart
Copy code
logger.error("This is an error message");
Print a fine message with default styling:

dart
Copy code
logger.fine("This is a fine message");
Contributions
Contributions are welcome! If you find a bug or have an idea for improvement, feel free to open an issue or create a pull request.

**License**
This project is licensed under the MIT License - see the LICENSE file for details.