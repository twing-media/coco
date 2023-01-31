import 'package:coco/coco.dart';

void main() {
  /// coco makes console colorful using simple functions
  /// use [write] to print any string in beautiful colors
  'coco '.write(inPurple);
  'makes '.write(inGray);
  'console '.write(inBold & inGray);
  'colorful '.write(inColorfulLetters & inItalics);
  'using '.write(inGray);
  'simple '.write(inGray);
  'functions.'.writeLine(inGray);

  /// use [print] or [writeLine] to add a line break at the end of the string
  'use '.write(inSubtleColors);
  'write(✨) '.write(inRed);
  'or '.write(inSubtleColors);
  'print(✨) '.write(inRed);
  'to add a '.write(inSubtleColors);
  'line break ✂️'.write(inItalics & inShadesOfBlue & breakLine);
  'at the end of the string.'.print(inSubtleColors);

  /// combine multiple colors and styles using [&] operator
  'combine multiple '.write(inSubtleColors);
  'colors '.write(inColorfulLetters);
  'and '.write(inSubtleColors);
  'styles '.write(inFunkyLetters);
  'using '.write(inSubtleColors);
  '[&] '.write(inRed);
  'operator.'.writeLine(inSubtleColors);
  'Now you can really '.write(inSubtleColors);

  /// go crazy with your console!❤️
  'go crazy with your console! ❤️'.print(inColorfulLetters);
}
