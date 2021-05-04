# yanti

Yet Another Nullable Type Implementation

## Usage

```
class TestClass {
  TestClass({this.value});

  String? value;

  TestClass copyWith({Optional<String>? value}) {
    return TestClass(
      value: value.or(this.value),
    );
  }
}
```

```
final foo = TestClass(value: 'foo');

final bar = foo.copyWith();
// value is 'foo'

final baz = foo.copyWith(value: Optional('bar'));
// value is 'bar'

final qux = foo.copyWith(value: Optional(null));
// value is null

final quux = foo.copyWith(value: Optional.empty());
// value is null
```