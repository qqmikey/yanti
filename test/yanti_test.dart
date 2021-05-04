import 'package:flutter_test/flutter_test.dart';
import 'package:yanti/yanti.dart';

class TestClass {
  TestClass({this.value});

  String? value;

  TestClass copyWith({Optional<String>? test}) {
    return TestClass(
      value: test.or(this.value),
    );
  }
}

void main() {
  final foo = TestClass(value: 'foo');

  test('test constructor', () {
    expect(foo.value, 'foo');
  });

  test('test copy with value', () {
    final bar = foo.copyWith(test: Optional('bar'));
    expect(bar.value, 'bar');
  });

  test('test copy without value', () {
    final bar = foo.copyWith();
    expect(bar.value, 'foo');
  });

  test('test copy with Optional.empty', () {
    final bar = foo.copyWith(test: Optional.empty());
    expect(bar.value, null);
  });

  test('test copy with null value', () {
    final bar = foo.copyWith(test: Optional(null));
    expect(bar.value, null);
  });
}
