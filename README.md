# Coco ✨ Colorful console

Helps you to print colorful text in the console with ease.
because who doesn't like colorful console?
check out the example below to see how easy it is to use coco.


```dart
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

```


## Installation

Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  coco: ^0.0.1
```

## Usage

```dart
import 'package:coco/coco.dart';



```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]:

## License

```
MIT License
Copyright (c) 2020 Coco

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

