import 'package:log_flutter/log_flutter.dart';

void main() {
  final awesomeLog = Logs();
  awesomeLog.info("This info");
  awesomeLog.warning("This warning");
  awesomeLog.fine("This fine");
  awesomeLog.error("This error");

// provide class name

  final awesomeLog1 = Logs(className: "Main Class");
  awesomeLog1.info("This info");
  awesomeLog1.warning("This warning");
  awesomeLog1.fine("This fine");
  awesomeLog1.error("This error");

  //! message is
  //Main Class : INFO : this info

  // provide the color and enable the isDFullTextColor ,isAFullTextColor
  final awesomeLog2 = Logs(
      className: "Main Class",
      foreground: ANSIColor.blue,
      background: ANSIColor.white,
      isAFullTextColor: true,
      isDFullTextColor: true);
  awesomeLog2.info("This info");
  awesomeLog2.fine("This fine");

  //message will be
  // Main Class : FINE : this info --> this text color blue ,bacckground color is white
  // Main Class : INFO : this info --> this text color green ,bacckground color is white
}
