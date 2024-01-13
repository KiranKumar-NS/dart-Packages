part of "logs.dart";

// debugging levels
enum Level { warning, info, fine, error }

// color form ANSI code given
enum ANSIColor {
  black,
  red,
  green,
  yellow,
  blue,
  magenta,
  cyan,
  white,
  default_,
  reset,
  brightBlack,
  brightRed,
  brightGreen,
  brightYellow,
  brightBlue,
  brightMagenta,
  brightCyan,
  brightWhite,
}

//geting the color code using the extenstion

extension CustomANSIColor on ANSIColor {
  getForegroundColor() {
    switch (this) {
      case ANSIColor.black:
        return "30";
      case ANSIColor.red:
        return "31";
      case ANSIColor.green:
        return "32";
      case ANSIColor.yellow:
        return "33";
      case ANSIColor.blue:
        return "34";
      case ANSIColor.magenta:
        return "35";
      case ANSIColor.cyan:
        return "36";
      case ANSIColor.white:
        return "37";
      case ANSIColor.default_:
        return "39";
      case ANSIColor.reset:
        return "0";
      case ANSIColor.brightBlack:
        return "90";
      case ANSIColor.brightRed:
        return "91";
      case ANSIColor.brightGreen:
        return "92";
      case ANSIColor.brightYellow:
        return "93";
      case ANSIColor.brightBlue:
        return "94";
      case ANSIColor.brightMagenta:
        return "95";
      case ANSIColor.brightCyan:
        return "96";
      case ANSIColor.brightWhite:
        return "97";
    }
  }

  getBackgroundColor() {
    switch (this) {
      case ANSIColor.black:
        return "40";
      case ANSIColor.red:
        return "41";
      case ANSIColor.green:
        return "42";
      case ANSIColor.yellow:
        return "43";
      case ANSIColor.blue:
        return "44";
      case ANSIColor.magenta:
        return "45";
      case ANSIColor.cyan:
        return "46";
      case ANSIColor.white:
        return "47";
      case ANSIColor.default_:
        return "49";
      case ANSIColor.reset:
        return "0";
      case ANSIColor.brightBlack:
        return "100";
      case ANSIColor.brightRed:
        return "101";
      case ANSIColor.brightGreen:
        return "102";
      case ANSIColor.brightYellow:
        return "103";
      case ANSIColor.brightBlue:
        return "104";
      case ANSIColor.brightMagenta:
        return "105";
      case ANSIColor.brightCyan:
        return "106";
      case ANSIColor.brightWhite:
        return "107";
    }
  }
}
