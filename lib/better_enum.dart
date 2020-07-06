/// Library/Package for the 'Enum' baseclass
library better_enum;

/// The new baseclass for all enum's
abstract class Enum<T> {
  /// The value that this enum-member is holding
  final T _value;

  /// The optional name of this enum-member, is only used in [toString()]
  final String _name;
  const Enum(this._value, this._name);

  // Returns the holded value
  T get value => _value;

  // Returns the name, maybe null
  String get name => _name;

  /// Returns string representation of the enum
  ///
  /// if [_name] is a non-null string, then its
  /// used in the result, otherwise not
  toString() {
    if (this.name == null) {
      return 'Enum.$runtimeType.$_value';
    }
    return 'Enum.$runtimeType.$_name:$_value';
  }
}
