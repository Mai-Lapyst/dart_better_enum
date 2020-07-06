# better_enum

Package that provides a better way (java-like) to write enums

## Getting Started

To use the new enum-class, you actualy have to write a class by yourself.
Example: 

```dart
import 'package:better_enum/better_enum.dart'

class Meter extends Enum<int> {
  // Internal constructor to prevent other code to create new 
  // instances of our enum.
  // Name is optional, and the base-class also has functionality
  // to work without a name.
  const Meter._internal(int val, {String name}): super(val, name);

  // example how to create a named Enum instance. The name is used
  // only for the toString() method.
  static const Meter HIGH = const Meter._internal(100, name: "HIGH");
  static const Meter MIDDLE = const Meter._internal(50);
  static const Meter LOW = const Meter._internal(10);
}
```
