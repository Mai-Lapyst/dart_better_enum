library better_enum;

/// The new baseclass for all enum's
abstract class Enum<T> {

  final T _value;
  final String _name;
  const Enum(this._value, this._name);
    
  T get value => _value;
  String get name => _name;
  
  /// Returns string representation of the enum
  /// if [_name] is a non-null string, then its
  /// used in the result, otherwise not
  toString() {
    if (this.name == null) {
      return 'Enum.$runtimeType.$_value';
    }
    return 'Enum.$runtimeType.$_name:$_value';
  }
}