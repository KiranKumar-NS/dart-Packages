part of 'logs.dart';

class LogLogic {
  final String? className;
  final ANSIColor? foreground;
  final ANSIColor? background;
  final bool isDFullTextColor;
  final bool isAFullTextColor;
  const LogLogic(
      {this.className = "",
      this.background,
      this.foreground,
      this.isDFullTextColor = false,
      this.isAFullTextColor = false});

//? returing the  printing value

  String _debugPrintStack({
    label,
    StackTrace? stackTrace,
    int? maxFrames = 1,
    bool defaulte = false,
    ANSIColor? colorANSI,
    Level? level,
  }) {
    final path = stackTrace != null
        ? "  ----> ${_getStackTrace(stackTrace, maxFrames: maxFrames)}"
        : '';
    final cName = (className ?? '').isNotEmpty ? "$className : " : '';

    final levelLabel = getLevelName(level!);
    const resetColor = '\x1B[0m';

    String outputString;
    if (defaulte) {
      final fColorCode = foreground?.getForegroundColor() ?? '';
      final bColorCode = background?.getBackgroundColor() ?? '';

      final fColor = foreground != null ? '\x1B[$fColorCode' 'm' : '\x1B[0m';
      final bColor = background != null ? '\x1B[$bColorCode' 'm' : '\x1B[0m';

      outputString = isDFullTextColor
          ? "$bColor$fColor$cName$levelLabel : ${label ?? ''} $resetColor$resetColor  $path "
          : "$bColor$fColor$cName$levelLabel$resetColor$resetColor : ${label ?? ''}   $path ";
    } else {
      final colorCode = colorANSI?.getForegroundColor() ?? '';
      final color = '\x1B[$colorCode' 'm';

      outputString = isAFullTextColor
          ? "$color$cName$levelLabel : ${label ?? ''} $resetColor  $path "
          : "$color$cName$levelLabel$resetColor : ${label ?? ''}   $path ";
    }

    return outputString;
  }

  //? get stackTrace details and filiter the fileName

  String _getStackTrace(stackTraceVal, {int? maxFrames}) {
    final stackTrace = FlutterError.demangleStackTrace(stackTraceVal);
    Iterable<String> lines = stackTrace.toString().trimRight().split('\n');
    if (kIsWeb && lines.isNotEmpty) {
      lines = lines.skipWhile((String line) {
        return line.contains('StackTrace.current') ||
            line.contains('dart-sdk/lib/_internal') ||
            line.contains('dart:sdk_internal');
      });
    }
    if (maxFrames != null) {
      lines = lines.take(maxFrames);
    }

    // getting the file path
    var fristLine = lines.first;
    var packagePath = fristLine.split('(')[1];
    var path = packagePath.replaceFirstMapped(")", (match) => "");
    return path;
  }

  String getLevelName(Level level) {
    switch (level) {
      case Level.info:
        return "INFO";
      case Level.warning:
        return "WARNING";
      case Level.fine:
        return "FINE";
      case Level.error:
        return "ERROR";
    }
  }
}
