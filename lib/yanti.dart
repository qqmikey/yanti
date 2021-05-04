library yanti;

class Optional<T> {
  final T? _value;

  Optional(this._value);

  Optional.empty() : this._value = null;

  T? get value => _value;
}

extension OptionalExtension on Optional? {
  or(defaultValue) => this == null ? defaultValue : this!.value;
}
