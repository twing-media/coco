//test extensions on String
import 'package:coco/src/src.dart';
import 'package:test/test.dart';

void main() {
  group('EXTENSIONS InStyle', () {
    test('TEXT.inRed', () {
      var printString = "TEXT.inRed".inRed;
      expect(printString, equals('\u001b[31mTEXT.inRed\u001b[0m'));
      print(printString);
    });

    test('TEXT.inGreen', () {
      var printString = "TEXT.inGreen".inGreen;
      expect(printString, equals('\u001b[32mTEXT.inGreen\u001b[0m'));
      print(printString);
    });

    test('TEXT.inYellow', () {
      var printString = "TEXT.inYellow".inYellow;
      expect(printString, equals('\u001b[33mTEXT.inYellow\u001b[0m'));
      print(printString);
    });

    test('TEXT.inBlue', () {
      var printString = "TEXT.inBlue".inBlue;
      expect(printString, equals('\u001b[34mTEXT.inBlue\u001b[0m'));
      print(printString);
    });

    test('TEXT.inMagenta', () {
      var printString = "TEXT.inMagenta".inMagenta;
      expect(printString, equals('\u001b[35mTEXT.inMagenta\u001b[0m'));
      print(printString);
    });

    test('TEXT.inCyan', () {
      var printString = "TEXT.inCyan".inCyan;
      expect(printString, equals('\u001b[36mTEXT.inCyan\u001b[0m'));
      print(printString);
    });

    test('TEXT.inWhite', () {
      var printString = "TEXT.inWhite".inWhite;
      expect(printString, equals('\u001b[37mTEXT.inWhite\u001b[0m'));
      print(printString);
    });

    test('TEXT.inBold', () {
      var printString = "TEXT.inBold".inBold;
      expect(printString, equals('\u001b[1mTEXT.inBold\u001b[0m'));
      print(printString);
    });

    test('TEXT.inDim', () {
      var printString = "TEXT.inDim".inDim;
      expect(printString, equals('\u001b[2mTEXT.inDim\u001b[0m'));
      print(printString);
    });

    test('TEXT.inItalic', () {
      var printString = "TEXT.inItalic".inItalics;
      expect(printString, equals('\u001b[3mTEXT.inItalic\u001b[0m'));
      print(printString);
    });

    test('TEXT.inUnderlined', () {
      var printString = "TEXT.inUnderlined".inUnderline;
      expect(printString, equals('\u001b[4mTEXT.inUnderlined\u001b[0m'));
      print(printString);
    });

    //strike through
    test('TEXT.inStrikethrough', () {
      var printString = "TEXT.inStrikethrough".inStrikethrough;
      expect(printString, equals('\u001b[9mTEXT.inStrikethrough\u001b[0m'));
      print(printString);
    });

    //Bg

    test('TEXT.inRedBg', () {
      var printString = "TEXT.inRedBg".inRedBg;
      expect(printString, equals('\u001b[41mTEXT.inRedBg\u001b[0m'));
      print(printString);
    });

    test('TEXT.inGreenBg', () {
      var printString = "TEXT.inGreenBg".inGreenBg;
      expect(printString, equals('\u001b[42mTEXT.inGreenBg\u001b[0m'));
      print(printString);
    });

    test('TEXT.inYellowBg', () {
      var printString = "TEXT.inYellowBg".inYellowBg;
      expect(printString, equals('\u001b[43mTEXT.inYellowBg\u001b[0m'));
      print(printString);
    });

    test('TEXT.inBlueBg', () {
      var printString = "TEXT.inBlueBg".inBlueBg;
      expect(printString, equals('\u001b[44mTEXT.inBlueBg\u001b[0m'));
      print(printString);
    });

    test('TEXT.inMagentaBg', () {
      var printString = "TEXT.inMagentaBg".inMagentaBg;
      expect(printString, equals('\u001b[45mTEXT.inMagentaBg\u001b[0m'));
      print(printString);
    });

    test('TEXT.inCyanBg', () {
      var printString = "TEXT.inCyanBg".inCyanBg;
      expect(printString, equals('\u001b[46mTEXT.inCyanBg\u001b[0m'));
      print(printString);
    });

    test('TEXT.inWhiteBg', () {
      var printString = "TEXT.inWhiteBg".inWhiteBg;
      expect(printString, equals('\u001b[47mTEXT.inWhiteBg\u001b[0m'));
      print(printString);
    });

    test('TEXT.inBlackBg', () {
      var printString = "TEXT.inBlackBg".inBlackBg;
      expect(printString, equals('\u001b[40mTEXT.inBlackBg\u001b[0m'));
      print(printString);
    });

    test('TEXT.inGrayBg', () {
      var printString = "TEXT.inGrayBg".inGrayBg;
      expect(printString, equals('\u001b[100mTEXT.inGrayBg\u001b[0m'));
      print(printString);
    });
  });
}
