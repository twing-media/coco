import 'dart:io' as io;

import 'package:coco/src/src.dart';

extension CocoStringAsExtensions on String {
  //enable calling "Hello World".print(inRed)
  void write(CocoFunc s) {
    io.stdout.write(s(this));
  }

  //write line
  void print(CocoFunc s) {
    io.stdout.writeln(s(this));
  }

  //write line
  void writeLine(CocoFunc s) {
    io.stdout.writeln(s(this));
  }

  //returns each character in different color
  String get inColourfulChars {
    var stringbuilder = StringBuffer();
    for (var i = 0; i < length; i++) {
      stringbuilder.write(this[i].inRandom.cancelReset);
    }
    return stringbuilder.toString();
  }

  //returns each word in different color
  String get inColourfulWords {
    var stringbuilder = StringBuffer();
    final words = split(' ');
    for (var i = 0; i < words.length; i++) {
      stringbuilder.write('${words[i].inRandom} ');
    }
    return stringbuilder.toString();
  }

  //returns each sentence in different color
  String get inColourfulSentences {
    var stringbuilder = StringBuffer();
    final sentences = split('.');
    for (var i = 0; i < sentences.length; i++) {
      stringbuilder.write('${sentences[i].inRandom}. ');
    }
    return stringbuilder.toString();
  }

  //returns each paragraph in different color
  String get inColourfulParagraphs {
    var stringbuilder = StringBuffer();
    final paragraphs = split('\n');
    for (var i = 0; i < paragraphs.length; i++) {
      stringbuilder.write('${paragraphs[i].inRandom}\n');
    }
    return stringbuilder.toString();
  }
}

//inSubtleColors use only gray, white, black, and yellow
extension CocoStringInSubtleColors on String {
  String get inSubtleColors {
    var stringbuilder = StringBuffer();
    for (var i = 0; i < length; i++) {
      stringbuilder.write(this[i].inRandomSubtle);
    }
    return stringbuilder.toString();
  }
}

class Text {
  //returns each character in different color using as()
  static String withColourfulLetters(String s) {
    var stringbuilder = StringBuffer();
    for (var i = 0; i < s.length; i++) {
      stringbuilder.write(s[i].inRandom);
    }
    return stringbuilder.toString();
  }
}

void newLine() {
  io.stdout.writeln();
}

void lineBreak() {
  io.stdout.writeln();
}

//define & operator for CocoFunc
extension CocoFuncExtensions on CocoFunc {
  CocoFunc operator &(CocoFunc other) {
    return (String s) => other(this(s));
  }
}

typedef CocoFunc = String Function(String);

CocoFunc inRed = (String s) => s.inRed;

CocoFunc inGreen = (String s) => s.inGreen;

CocoFunc inYellow = (String s) => s.inYellow;

CocoFunc inBlue = (String s) => s.inBlue;

CocoFunc inMagenta = (String s) => s.inMagenta;

CocoFunc inCyan = (String s) => s.inCyan;

CocoFunc inWhite = (String s) => s.inWhite;

CocoFunc inBlack = (String s) => s.inBlack;

CocoFunc inGray = (String s) => s.inGray;

CocoFunc inPurple = (String s) => s.inMagenta;

CocoFunc inRandom = (String s) => s.inRandom;

CocoFunc inColourfulLetters = (String s) => s.inColourfulChars;

CocoFunc inColourfulWords = (String s) => s.inColourfulWords;

CocoFunc inColors = (String s) => s.inColourfulWords;

CocoFunc inItalics = (String s) => s.inItalics;

CocoFunc inBold = (String s) => s.inBold;

CocoFunc withUnderline = (String s) => s.inUnderline;

CocoFunc inUnderline = (String s) => s.inUnderline;

CocoFunc inColourfulSentences = (String s) => s.inColourfulSentences;

CocoFunc inColourfulParagraphs = (String s) => s.inColourfulParagraphs;

CocoFunc inSubtleColors = (String s) => s.inSubtleColors;

CocoFunc inRandomSubtle = (String s) => s.inRandomSubtle;

CocoFunc inShadesOfBlue = (String s) => s.inBlueShades;

CocoFunc inShadesOfRed = (String s) => s.inRedShades;

CocoFunc inShadesOfGreen = (String s) => s.inGreenShades;

CocoFunc inShadesOfYellow = (String s) => s.inYellowShades;

CocoFunc inShadesOfMagenta = (String s) => s.inMagentaShades;

CocoFunc inShadesOfCyan = (String s) => s.inCyanShades;

CocoFunc inShadesOfGray = (String s) => s.inGrayShades;

CocoFunc inShadesOfPurple = (String s) => s.inMagentaShades;

CocoFunc inShadesOfWhite = (String s) => s.inWhiteShades;

CocoFunc inShadesOfRandom = (String s) => s.inRandomShades;

CocoFunc inShadesOf = (String s) => s.inRandomShades;

CocoFunc inFunkyLetters = (String s) => s.inFunkyLetters;

CocoFunc breakLine = (String s) => '$s\n';
