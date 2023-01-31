import 'package:coco/src/constants/colors.dart';
import 'package:test/test.dart';

void main() {
  group('PRINTING', () {
    setUp(() {
      //print test start
      print("Starting test");
    });

    test('TEXT IN RED FOREGROUND', () {
      var printString = "${Coco.red}TEXT IN RED FOREGROUND";
      expect(printString, equals('\u001b[31mTEXT IN RED FOREGROUND'));
      print(printString);
    });

    test('TEXT IN GREEN FOREGROUND', () {
      var printString = "${Coco.green}TEXT IN GREEN FOREGROUND";
      expect(printString, equals('\u001b[32mTEXT IN GREEN FOREGROUND'));
      print(printString);
    });

    test('TEXT IN YELLOW FOREGROUND', () {
      var printString = "${Coco.yellow}TEXT IN YELLOW FOREGROUND";
      expect(printString, equals('\u001b[33mTEXT IN YELLOW FOREGROUND'));
      print(printString);
    });

    test('TEXT IN BLUE FOREGROUND', () {
      var printString = "${Coco.blue}TEXT IN BLUE FOREGROUND";
      expect(printString, equals('\u001b[34mTEXT IN BLUE FOREGROUND'));
      print(printString);
    });

    test('TEXT IN MAGENTA FOREGROUND', () {
      var printString = "${Coco.magenta}TEXT IN MAGENTA FOREGROUND";
      expect(printString, equals('\u001b[35mTEXT IN MAGENTA FOREGROUND'));
      print(printString);
    });

    test('TEXT IN CYAN FOREGROUND', () {
      var printString = "${Coco.cyan}TEXT IN CYAN FOREGROUND";
      expect(printString, equals('\u001b[36mTEXT IN CYAN FOREGROUND'));
      print(printString);
    });

    test('TEXT IN WHITE FOREGROUND', () {
      var printString = "${Coco.white}TEXT IN WHITE FOREGROUND";
      expect(printString, equals('\u001b[37mTEXT IN WHITE FOREGROUND'));
      print(printString);
    });

    test('TEXT IN RESET FOREGROUND', () {
      var printString = "${Coco.reset}TEXT IN RESET FOREGROUND";
      expect(printString, equals('\u001b[0mTEXT IN RESET FOREGROUND'));
      print(printString);
    });

    test('TEXT IN RED BACKGROUND', () {
      var printString = "${Coco.bg.red}TEXT IN RED BACKGROUND";
      expect(printString, equals('\u001b[41mTEXT IN RED BACKGROUND'));
      print(printString);
    });

    test('TEXT IN GREEN BACKGROUND', () {
      var printString = "${Coco.bg.green}TEXT IN GREEN BACKGROUND";
      expect(printString, equals('\u001b[42mTEXT IN GREEN BACKGROUND'));
      print(printString);
    });

    test('TEXT IN YELLOW BACKGROUND', () {
      var printString = "${Coco.bg.yellow}TEXT IN YELLOW BACKGROUND";
      expect(printString, equals('\u001b[43mTEXT IN YELLOW BACKGROUND'));
      print(printString);
    });

    test('TEXT IN BLUE BACKGROUND', () {
      var printString = "${Coco.bg.blue}TEXT IN BLUE BACKGROUND";
      expect(printString, equals('\u001b[44mTEXT IN BLUE BACKGROUND'));
      print(printString);
    });

    test('TEXT IN MAGENTA BACKGROUND', () {
      var printString = "${Coco.bg.magenta}TEXT IN MAGENTA BACKGROUND";
      expect(printString, equals('\u001b[45mTEXT IN MAGENTA BACKGROUND'));
      print(printString);
    });

    test('TEXT IN CYAN BACKGROUND', () {
      var printString = "${Coco.bg.cyan}TEXT IN CYAN BACKGROUND";
      expect(printString, equals('\u001b[46mTEXT IN CYAN BACKGROUND'));
      print(printString);
    });

    test('TEXT IN WHITE BACKGROUND', () {
      var printString = "${Coco.bg.white}TEXT IN WHITE BACKGROUND";
      expect(printString, equals('\u001b[47mTEXT IN WHITE BACKGROUND'));
      print(printString);
    });

    test('TEXT IN BOLD', () {
      var printString = "${Coco.bold}TEXT IN BOLD";
      expect(printString, equals('\u001b[1mTEXT IN BOLD'));
      print(printString);
    });

    test('TEXT IN DIM', () {
      var printString = "${Coco.dim}TEXT IN DIM";
      expect(printString, equals('\u001b[2mTEXT IN DIM'));
      print(printString);
    });

    test('TEXT IN ITALIC', () {
      var printString = "${Coco.italic}TEXT IN ITALIC";
      expect(printString, equals('\u001b[3mTEXT IN ITALIC'));
      print(printString);
    });

    test('TEXT IN UNDERLINE', () {
      var printString = "${Coco.underline}TEXT IN UNDERLINE";
      expect(printString, equals('\u001b[4mTEXT IN UNDERLINE'));
      print(printString);
    });

    test('TEXT IN INVERSE', () {
      var printString = "${Coco.inverse}TEXT IN INVERSE";
      expect(printString, equals('\u001b[7mTEXT IN INVERSE'));
      print(printString);
    });

    test('TEXT IN HIDDEN', () {
      var printString = "${Coco.hidden}TEXT IN HIDDEN";
      expect(printString, equals('\u001b[8mTEXT IN HIDDEN'));
      print(printString);
    });

    test('TEXT IN STRIKETHROUGH', () {
      var printString = "${Coco.strikethrough}TEXT IN STRIKETHROUGH";
      expect(printString, equals('\u001b[9mTEXT IN STRIKETHROUGH'));
      print(printString);
    });
  });
}
