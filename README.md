# Coco ✨ Colourful console

![PREVIEW](https://github.com/twing-media/coco/blob/main/images/SS4.png?raw=true)


coco makes console colourful using simple functions.
some handy functions to make your console output colourful and beautiful.
check out the example below to see how easy it is to use coco.


```dart
import 'package:coco/coco.dart';

void main() {
  /// coco makes console colourful using simple functions
  /// use [write] to print any string in beautiful colors
  'coco '.write(inPurple);
  'makes '.write(inGray);
  'console '.write(inBold & inGray);
  'colourful '.write(inColourfulLetters & inItalics);
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
  'colors '.write(inColourfulLetters);
  'and '.write(inSubtleColors);
  'styles '.write(inFunkyLetters);
  'using '.write(inSubtleColors);
  '[&] '.write(inRed);
  'operator.'.writeLine(inSubtleColors);
  'Now you can really '.write(inSubtleColors);

  /// go crazy with your console!❤️
  'go crazy with your console! ❤️'.print(inColourfulLetters);
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

