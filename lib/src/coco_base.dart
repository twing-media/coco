import 'package:coco/coco.dart';

export 'src.dart';

/// Printable
/// this can be used to make any object printable
abstract class Printable {
  /// returns a printable string
  String render(CocoFunc style);
}

/// extension that makes any object supporting toString() printable
/// recursively make everything printable.
extension PrintableEx<T extends Object> on T? {
  String render(CocoFunc style) {
    if (this == null) return 'null';
    if (this is Printable) return (this as Printable).render(style);
    if (this is Iterable) {
      final list = this as Iterable;
      return list.map((e) => e.render(style)).join(', ');
    }
    if (this is Map) {
      final map = this as Map;
      return map.entries
          .map((e) => '${e.key}: ${e.value.render(style)}')
          .join(', ');
    }
    return toString();
  }

  /// write
  void write(CocoFunc style) => print(render(style));

  /// writeln
  void writeln(CocoFunc style) => print('${render(style)}\n');
}
