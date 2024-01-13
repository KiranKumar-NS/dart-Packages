import 'package:flutter/foundation.dart';

part 'log_logic.dart';
part 'log_color.dart';

class Logs extends LogLogic {
  final String? className; // print with class name
  final ANSIColor? foreground; //for text color
  final ANSIColor? background; // for backgroud color
  final bool
      isDFullTextColor; // only for apply foreground and background for fine messages only
  final bool
      isAFullTextColor; // foreground and background  apply for all printing messages except fine

  // Private constructor
  Logs({
    this.className = "",
    this.background,
    this.foreground,
    this.isDFullTextColor = false,
    this.isAFullTextColor = false,
  });

//!Info debugging

  info(label, {StackTrace? stackTrace, int? maxFrames = 1}) {
    String content = _debugPrintStack(
        label: label,
        stackTrace: stackTrace,
        maxFrames: maxFrames,
        colorANSI: ANSIColor.green,
        level: Level.info);
    debugPrint(content);
  }

//!Warning debugging

  warning(label, {StackTrace? stackTrace, int? maxFrames = 1}) {
    String content = _debugPrintStack(
        label: label,
        stackTrace: stackTrace,
        maxFrames: maxFrames,
        colorANSI: ANSIColor.blue,
        level: Level.warning);
    debugPrint(content);
  }

//!error debugging

  error(label, {StackTrace? stackTrace, int? maxFrames = 1}) {
    String content = _debugPrintStack(
        label: label,
        stackTrace: stackTrace,
        maxFrames: maxFrames,
        colorANSI: ANSIColor.red,
        level: Level.error);
    debugPrint(content);
  }

//!fine debugging

  fine(label, {StackTrace? stackTrace, int? maxFrames = 1}) {
    String content = _debugPrintStack(
        label: label,
        stackTrace: stackTrace,
        maxFrames: maxFrames,
        defaulte: true,
        level: Level.fine);
    debugPrint(content);
  }
}
