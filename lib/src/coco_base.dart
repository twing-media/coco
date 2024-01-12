import 'dart:io' as io;
import 'dart:math';

/// A class representing text styles.
class CoStyle {
  final String Function(Object?) format;

  /// Creates a CoStyle with the given format function.
  CoStyle(this.format);

  /// Applies the style to an object and returns the formatted string.
  String apply(Object? object) => format(object);

  /// Writes the formatted string to stdout.
  void write(Object? object) {
    io.stdout.write(format(object));
  }

  /// Prints the formatted string to stdout with a line break.
  void print(Object? object) {
    io.stdout.writeln(format(object));
  }

  /// Merges this style with another CoStyle.
  CoStyle merge(CoStyle other) {
    return CoStyle((Object? o) => format(other.format(o)));
  }

  /// Chains this style with another CoStyle to create a CoStyleSet.
  CoStyleSet chain(CoStyle other) {
    return CoStyleSet([this, other]);
  }

  /// Creates a CoStyle from an ANSI escape code.
  factory CoStyle.ansi(String format) {
    return CoStyle((Object? o) => '\x1B[$format$o\x1B[0m');
  }

  /// Creates a CoStyle from red, green, and blue values.
  factory CoStyle.rgb(int r, int g, int b) {
    return CoStyle((Object? o) => '\x1B[38;2;$r;$g;${b}m$o\x1B[0m');
  }

  /// Creates a CoStyle from red, green, and blue values for background.
  factory CoStyle.bgRgb(int r, int g, int b) {
    return CoStyle((Object? o) => '\x1B[48;2;$r;$g;${b}m$o\x1B[0m');
  }

  /// Creates a CoStyle from a hex string.
  factory CoStyle.hex(String hex) {
    hex = hex.replaceAll('#', '');
    if (hex.length == 3) {
      hex = '${hex[0]}${hex[0]}${hex[1]}${hex[1]}${hex[2]}${hex[2]}';
    }
    final r = int.tryParse(hex.substring(0, 2), radix: 16) ?? 0;
    final g = int.tryParse(hex.substring(2, 4), radix: 16) ?? 0;
    final b = int.tryParse(hex.substring(4, 6), radix: 16) ?? 0;

    return CoStyle((Object? o) => '\x1B[38;2;$r;$g;${b}m$o\x1B[0m');
  }

  /// Creates a CoStyle from a hex string for background.
  factory CoStyle.bgHex(String hex) {
    hex = hex.replaceAll('#', '');
    if (hex.length == 3) {
      hex = '${hex[0]}${hex[0]}${hex[1]}${hex[1]}${hex[2]}${hex[2]}';
    }
    final r = int.tryParse(hex.substring(0, 2), radix: 16) ?? 0;
    final g = int.tryParse(hex.substring(2, 4), radix: 16) ?? 0;
    final b = int.tryParse(hex.substring(4, 6), radix: 16) ?? 0;
    return CoStyle((Object? o) => '\x1B[48;2;$r;$g;${b}m$o\x1B[0m');
  }

  /// Creates a CoStyle from a hex code.
  factory CoStyle.code(int code) {
    final r = (code >> 16) & 0xff;
    final g = (code >> 8) & 0xff;
    final b = code & 0xff;
    return CoStyle((Object? o) => '\x1B[38;2;$r;$g;${b}m$o\x1B[0m');
  }

  /// Creates a CoStyle from a hex code for background.
  factory CoStyle.bgCode(int code) {
    final r = (code >> 16) & 0xff;
    final g = (code >> 8) & 0xff;
    final b = code & 0xff;
    return CoStyle((Object? o) => '\x1B[48;2;$r;$g;${b}m$o\x1B[0m');
  }

  /// Creates a CoStyle that prints in a random color each time.
  factory CoStyle.random() {
    final r = Random();
    final r1 = r.nextInt(255);
    final r2 = r.nextInt(255);
    final r3 = r.nextInt(255);
    return CoStyle((Object? o) => '\x1B[38;2;$r1;$r2;${r3}m$o\x1B[0m');
  }

  /// Creates a CoStyle with background color in a random color each time.
  factory CoStyle.bgRandom() {
    final r = Random();
    final r1 = r.nextInt(255);
    final r2 = r.nextInt(255);
    final r3 = r.nextInt(255);
    return CoStyle((Object? o) => '\x1B[48;2;$r1;$r2;${r3}m$o\x1B[0m');
  }

  /// Creates a CoStyle that prints in bold.
  factory CoStyle.bold() {
    return CoStyle((Object? o) => '\x1B[1m$o\x1B[0m');
  }

  /// Creates a CoStyle that prints in italic.
  factory CoStyle.italic() {
    return CoStyle((Object? o) => '\x1B[3m$o\x1B[0m');
  }

  /// Creates a CoStyle that prints with underline.
  factory CoStyle.underline() {
    return CoStyle((Object? o) => '\x1B[4m$o\x1B[0m');
  }

  /// Creates a CoStyle that prints with strikethrough.
  factory CoStyle.strikethrough() {
    return CoStyle((Object? o) => '\x1B[9m$o\x1B[0m');
  }

  /// Creates a CoStyle that prints with blink effect.
  factory CoStyle.blink() {
    return CoStyle((Object? o) => '\x1B[5m$o\x1B[0m');
  }

  /// Creates a CoStyle that inverts the foreground and background colors.
  factory CoStyle.invert() {
    return CoStyle((Object? o) => '\x1B[7m$o\x1B[0m');
  }
}

/// A class representing a set of CoStyles.
class CoStyleSet {
  final List<CoStyle> styles;

  /// Creates a CoStyleSet with the given styles.
  CoStyleSet(this.styles);

  /// Applies the styles to a list of objects and returns a list of formatted strings.
  List<String> apply(List<Object?> objects) {
    return objects
        .asMap()
        .entries
        .map((e) => styles[e.key % styles.length].apply(e.value))
        .toList();
  }

  /// Writes the formatted strings to stdout.
  void write(List<Object?> objects) {
    objects
        .asMap()
        .entries
        .forEach((e) => styles[e.key % styles.length].write(e.value));
  }

  /// Prints the formatted strings to stdout with a line break.
  void print(List<Object?> objects) {
    objects
        .asMap()
        .entries
        .forEach((e) => styles[e.key % styles.length].write("${e.value} "));
    // Line break
    io.stdout.writeln();
  }

  /// Merges this CoStyleSet with another CoStyleSet.
  CoStyleSet merge(CoStyleSet other) {
    return CoStyleSet([...styles, ...other.styles]);
  }
}

/// An extension on Object to apply a CoStyle.
extension CoStyleExtension on Object? {
  void write(CoStyle style) {
    style.write(this);
  }

  void print(CoStyle style) {
    style.print(this);
  }

  void writeLine(CoStyle style) {
    style.print(this);
  }
}

/// An extension on List<Object?> to apply a CoStyleSet.
extension CoStyleSetExtension on List<Object?> {
  void write(CoStyleSet sequence) {
    sequence.write(this);
  }

  void print(CoStyleSet sequence) {
    sequence.print(this);
  }

  void writeLine(CoStyleSet sequence) {
    sequence.print(this);
  }
}

/*


      CoStyle.hex('#00FFFF'),
      //next shade will be last one plus golden ratio for r g and b
      CoStyle.hex('#00FFCC'),
      CoStyle.hex('#00FF99'),
      CoStyle.hex('#00FF66'),
      CoStyle.hex('#00FF33'),
      CoStyle.hex('#00FF00'),
      CoStyle.hex('#33FF00'),
      CoStyle.hex('#66FF00'),
      CoStyle.hex('#99FF00'),
      CoStyle.hex('#CCFF00'),
      CoStyle.hex('#FFFF00'),
      CoStyle.hex('#FFCC00'),
      CoStyle.hex('#FF9900'),
      CoStyle.hex('#FF6600'),
      CoStyle.hex('#FF3300'),
      CoStyle.hex('#FF0000'),
      CoStyle.hex('#FF0033'),
      CoStyle.hex('#FF0066'),
      CoStyle.hex('#FF0099'),
      CoStyle.hex('#FF00CC'),
      CoStyle.hex('#FF00FF'),
      CoStyle.hex('#CC00FF'),
      CoStyle.hex('#9900FF'),
      CoStyle.hex('#6600FF'),
      CoStyle.hex('#3300FF'),
      CoStyle.hex('#0000FF'),
      CoStyle.hex('#0033FF'),
      CoStyle.hex('#0066FF'),
      CoStyle.hex('#0099FF'),
      CoStyle.hex('#00CCFF'),
      CoStyle.hex('#00FFFF'),


*/

/// info - starting from blue shades at each golden ratio making it look cool
CoStyleSet get asInfo => CoStyleSet([
      CoStyle.ansi('94m'),
      CoStyle.ansi('97m'),
      CoStyle.ansi('94m'),
      CoStyle.ansi('37m'),
      CoStyle.ansi('94m'),
      CoStyle.ansi('34m'),
      CoStyle.ansi('97m'),
      CoStyle.ansi('94m'),
      CoStyle.ansi('37m'),
      CoStyle.ansi('94m'),
      CoStyle.ansi('34m'),
    ]);

/// success - green_bright white_bright green_dim white_bright green_bright
CoStyleSet get asSuccess => CoStyleSet([
      CoStyle.ansi('92m'),
      CoStyle.ansi('97m'),
      CoStyle.ansi('92m'),
      CoStyle.ansi('37m'),
      CoStyle.ansi('92m'),
      CoStyle.ansi('32m'),
      CoStyle.ansi('97m'),
      CoStyle.ansi('92m'),
      CoStyle.ansi('37m'),
      CoStyle.ansi('92m'),
      CoStyle.ansi('32m'),
    ]);

/// warning - yellow_bright white_bright yellow_bright
CoStyleSet get asWarning => CoStyleSet([
      CoStyle.ansi('93m'),
      CoStyle.ansi('97m'),
      CoStyle.ansi('93m'),
      CoStyle.ansi('37m'),
      CoStyle.ansi('93m'),
      CoStyle.ansi('33m'),
      CoStyle.ansi('97m'),
      CoStyle.ansi('93m'),
      CoStyle.ansi('37m'),
      CoStyle.ansi('93m'),
      CoStyle.ansi('33m'),
    ]);

/// caution - red_bright white_bright red_bright
CoStyleSet get asCaution => CoStyleSet([
      CoStyle.ansi('91m'),
      CoStyle.ansi('97m'),
      CoStyle.ansi('91m'),
      CoStyle.ansi('37m'),
      CoStyle.ansi('91m'),
      CoStyle.ansi('31m'),
      CoStyle.ansi('97m'),
      CoStyle.ansi('91m'),
      CoStyle.ansi('37m'),
      CoStyle.ansi('91m'),
      CoStyle.ansi('31m'),
    ]);

/// error - red_bright white_bright red_bright
CoStyleSet get asError => CoStyleSet([
      CoStyle.ansi('91m'),
      CoStyle.ansi('97m'),
      CoStyle.ansi('91m'),
      CoStyle.ansi('37m'),
      CoStyle.ansi('91m'),
      CoStyle.ansi('31m'),
      CoStyle.ansi('97m'),
      CoStyle.ansi('91m'),
      CoStyle.ansi('37m'),
      CoStyle.ansi('91m'),
      CoStyle.ansi('31m'),
    ]);

/// danger - red_bright white_bright red_bright
CoStyleSet get asDanger => CoStyleSet([
      CoStyle.ansi('91m'),
      CoStyle.ansi('97m'),
      CoStyle.ansi('91m'),
      CoStyle.ansi('37m'),
      CoStyle.ansi('91m'),
      CoStyle.ansi('31m'),
      CoStyle.ansi('97m'),
      CoStyle.ansi('91m'),
      CoStyle.ansi('37m'),
      CoStyle.ansi('91m'),
      CoStyle.ansi('31m'),
    ]);

/// random - random random random
CoStyleSet get asRandom => CoStyleSet([CoStyle.random()]);
