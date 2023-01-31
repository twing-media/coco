//static class to fecilitate easy access to console colors

class Coco {
  //constans for foreground colors
  static const String red = '\u001b[31m';
  static const String green = '\u001b[32m';
  static const String yellow = '\u001b[33m';
  static const String blue = '\u001b[34m';
  static const String magenta = '\u001b[35m';
  static const String cyan = '\u001b[36m';
  static const String white = '\u001b[37m';
  static const String black = '\u001b[30m';
  static const String gray = '\u001b[90m';
  static const String reset = '\u001b[0m';

  //constans for background colors
  static const String bgRed = '\u001b[41m';
  static const String bgGreen = '\u001b[42m';
  static const String bgYellow = '\u001b[43m';
  static const String bgBlue = '\u001b[44m';
  static const String bgMagenta = '\u001b[45m';
  static const String bgCyan = '\u001b[46m';
  static const String bgWhite = '\u001b[47m';
  static const String bgBlack = '\u001b[40m';
  static const String bgGray = '\u001b[100m';
  static const String bgReset = '\u001b[0m';

  //constans for font styles
  static const String bold = '\u001b[1m';
  static const String italic = '\u001b[3m';
  static const String underline = '\u001b[4m';
  static const String inverse = '\u001b[7m';
  static const String strikethrough = '\u001b[9m';
  static const String dim = '\u001b[2m';
  static const String hidden = '\u001b[8m';

  //static class to fecilitate easy access to console background colors
  // can be used in the console by calling coco.bg.red
  static Bg bg = Bg();
}

//static class to fecilitate easy access to console background colors
// can be used in the console by calling coco.bg.red

class Bg {
  //getters to return the background color
  String get red => Coco.bgRed;
  String get green => Coco.bgGreen;
  String get yellow => Coco.bgYellow;
  String get blue => Coco.bgBlue;
  String get magenta => Coco.bgMagenta;
  String get cyan => Coco.bgCyan;
  String get white => Coco.bgWhite;
  String get reset => Coco.bgReset;
  String get black => Coco.bgBlack;
}
