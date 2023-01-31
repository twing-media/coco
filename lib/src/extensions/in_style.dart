import 'dart:math';

import '../src.dart';

/// Extension methods to print string to console in[Style]
/// eg. ['Hello World'.inRed] will print 'Hello World' in red color
/// eg. ['Hello World'.inRed.bold] will print 'Hello World' in red color and bold
/// eg. ['Hello World'.inRed.bold.underline] will print 'Hello World' in red color, bold and underline
/// eg. ['Hello World'.inRedBg.inWhite] will print 'Hello World' in red background color and white color

extension InStyle on String {
  /// print string in red color
  String get inRed => '${Coco.red}$this${Coco.reset}';

  /// print string in green color
  String get inGreen => '${Coco.green}$this${Coco.reset}';

  /// print string in yellow color
  String get inYellow => '${Coco.yellow}$this${Coco.reset}';

  /// print string in blue color
  String get inBlue => '${Coco.blue}$this${Coco.reset}';

  /// print string in magenta color
  String get inMagenta => '${Coco.magenta}$this${Coco.reset}';

  /// print string in cyan color
  String get inCyan => '${Coco.cyan}$this${Coco.reset}';

  /// print string in white color
  String get inWhite => '${Coco.white}$this${Coco.reset}';

  /// print string in black color
  String get inBlack => '${Coco.black}$this${Coco.reset}';

  String get inGray => '${Coco.gray}$this${Coco.reset}';

  /// print string in red background color
  String get inRedBg => '${Coco.bgRed}$this${Coco.bgReset}';

  /// print string in green background color
  String get inGreenBg => '${Coco.bgGreen}$this${Coco.bgReset}';

  /// print string in yellow background color
  String get inYellowBg => '${Coco.bgYellow}$this${Coco.bgReset}';

  /// print string in blue background color
  String get inBlueBg => '${Coco.bgBlue}$this${Coco.bgReset}';

  /// print string in magenta background color
  String get inMagentaBg => '${Coco.bgMagenta}$this${Coco.bgReset}';

  /// print string in cyan background color
  String get inCyanBg => '${Coco.bgCyan}$this${Coco.bgReset}';

  /// print string in white background color
  String get inWhiteBg => '${Coco.bgWhite}$this${Coco.bgReset}';

  /// print string in black background color
  String get inBlackBg => '${Coco.bgBlack}$this${Coco.bgReset}';

  String get inGrayBg => '${Coco.bgGray}$this${Coco.bgReset}';

  //in bold
  String get inBold => '${Coco.bold}$this${Coco.reset}';

  //in italic
  String get inItalics => '${Coco.italic}$this${Coco.reset}';

  //in underline
  String get inUnderline => '${Coco.underline}$this${Coco.reset}';

  //in inverse
  String get inInverse => '${Coco.inverse}$this${Coco.reset}';

  //in strikethrough
  String get inStrikethrough => '${Coco.strikethrough}$this${Coco.reset}';

  //in dim
  String get inDim => '${Coco.dim}$this${Coco.reset}';

  //removes last reset code
  String get cancelReset => replaceAll(Coco.reset, '');

  //in random color
  String get inRandom {
    final random = Random();
    final color = random.nextInt(7);
    switch (color) {
      case 0:
        return inRed;
      case 1:
        return inGreen;
      case 2:
        return inYellow;
      case 3:
        return inBlue;
      case 4:
        return inMagenta;
      case 5:
        return inCyan;
      case 6:
        return inWhite;
      default:
        return inWhite;
    }
  }

  //random subtle color (white, gray)

  String get inRandomSubtle {
    final random = Random();
    final color = random.nextInt(3);
    switch (color) {
      case 0:
        return inWhite;
      case 1:
        return inGray;
      default:
        return inWhite;
    }
  }

  //random bright color (red, green, yellow, blue, magenta, cyan)

  String get inRandomBright {
    final random = Random();
    final color = random.nextInt(6);
    switch (color) {
      case 0:
        return inRed;
      case 1:
        return inGreen;
      case 2:
        return inYellow;
      case 3:
        return inBlue;
      case 4:
        return inMagenta;
      case 5:
        return inCyan;
      default:
        return inWhite;
    }
  }

  //in shades of blue [blue/bright blue/cyan/magenta/white]
  String get inBlueShades {
    final random = Random();
    final color = random.nextInt(5);
    switch (color) {
      case 0:
        return inBlue;
      case 1:
        return inBlueBg;
      case 2:
        return inCyan;
      case 3:
        return inMagenta;
      case 4:
        return inWhite;
      default:
        return inWhite;
    }
  }

  //in shades of red
  String get inRedShades {
    final random = Random();
    final color = random.nextInt(5);
    switch (color) {
      case 0:
        return inRed;
      case 1:
        return inRedBg;
      case 2:
        return inRed.inBold;
      case 3:
        return inRed.inBold.inUnderline;
      case 4:
        return inRed.inBold.inUnderline.inInverse;
      default:
        return inWhite;
    }
  }

  //in shades of green
  String get inGreenShades {
    final random = Random();
    final color = random.nextInt(5);
    switch (color) {
      case 0:
        return inGreen;
      case 1:
        return inGreenBg;
      case 2:
        return inGreen.inBold;
      case 3:
        return inGreen.inBold.inUnderline;
      case 4:
        return inGreen.inBold.inUnderline.inInverse;
      default:
        return inWhite;
    }
  }

  //in shades of yellow
  String get inYellowShades {
    final random = Random();
    final color = random.nextInt(5);
    switch (color) {
      case 0:
        return inYellow;
      case 1:
        return inYellowBg;
      case 2:
        return inYellow.inBold;
      case 3:
        return inYellow.inBold.inUnderline;
      case 4:
        return inYellow.inBold.inUnderline.inInverse;
      default:
        return inWhite;
    }
  }

  //in shades of magenta
  String get inMagentaShades {
    final random = Random();
    final color = random.nextInt(5);
    switch (color) {
      case 0:
        return inMagenta;
      case 1:
        return inMagentaBg;
      case 2:
        return inMagenta.inBold;
      case 3:
        return inMagenta.inBold.inUnderline;
      case 4:
        return inMagenta.inBold.inUnderline.inInverse;
      default:
        return inWhite;
    }
  }

  //in shades of cyan
  String get inCyanShades {
    final random = Random();
    final color = random.nextInt(5);
    switch (color) {
      case 0:
        return inCyan;
      case 1:
        return inCyanBg;
      case 2:
        return inCyan.inBold;
      case 3:
        return inCyan.inBold.inUnderline;
      case 4:
        return inCyan.inBold.inUnderline.inInverse;
      default:
        return inWhite;
    }
  }

  //in shades of white
  String get inWhiteShades {
    final random = Random();
    final color = random.nextInt(5);
    switch (color) {
      case 0:
        return inWhite;
      case 1:
        return inWhiteBg;
      case 2:
        return inWhite.inBold;
      case 3:
        return inWhite.inBold.inUnderline;
      case 4:
        return inWhite.inBold.inUnderline.inInverse;
      default:
        return inWhite;
    }
  }

  //in shades of gray
  String get inGrayShades {
    final random = Random();
    final color = random.nextInt(5);
    switch (color) {
      case 0:
        return inGray;
      case 1:
        return inGrayBg;
      case 2:
        return inGray.inBold;
      case 3:
        return inGray.inBold.inUnderline;
      case 4:
        return inGray.inBold.inUnderline.inInverse;
      default:
        return inWhite;
    }
  }

  //in random shades
  String get inRandomShades {
    final random = Random();
    final color = random.nextInt(7);
    switch (color) {
      case 0:
        return inBlueShades;
      case 1:
        return inRedShades;
      case 2:
        return inGreenShades;
      case 3:
        return inYellowShades;
      case 4:
        return inMagentaShades;
      case 5:
        return inCyanShades;
      case 6:
        return inWhiteShades;
      default:
        return inWhiteShades;
    }
  }

  ///in Funky letters [each letter is in different style] [bold,underline,italic,strikethrough]
  String get inFunkyLetters {
    var sb = StringBuffer();
    for (var i = 0; i < length; i++) {
      final random = Random();
      final color = random.nextInt(4);
      switch (color) {
        case 0:
          sb.write(this[i].inBold);
          break;
        case 1:
          sb.write(this[i].inUnderline);
          break;
        case 2:
          sb.write(this[i].inItalics);
          break;
        case 3:
          sb.write(this[i].inStrikethrough);
          break;
        default:
          sb.write(this[i].inBold);
      }
    }
    return sb.toString();
  }

  //in random background color
  String get inRandomBg {
    final random = Random();
    final color = random.nextInt(7);
    switch (color) {
      case 0:
        return inRedBg;
      case 1:
        return inGreenBg;
      case 2:
        return inYellowBg;
      case 3:
        return inBlueBg;
      case 4:
        return inMagentaBg;
      case 5:
        return inCyanBg;
      case 6:
        return inWhiteBg;
      default:
        return inWhiteBg;
    }
  }

  //in random color and background color
  String get inRandomColor {
    final random = Random();
    final color = random.nextInt(7);
    switch (color) {
      case 0:
        return inRed + inRedBg;
      case 1:
        return inGreen + inGreenBg;
      case 2:
        return inYellow + inYellowBg;
      case 3:
        return inBlue + inBlueBg;
      case 4:
        return inMagenta + inMagentaBg;
      case 5:
        return inCyan + inCyanBg;
      case 6:
        return inWhite + inWhiteBg;
      default:
        return inWhite + inWhiteBg;
    }
  }
}
