import 'package:test/test.dart';

import 'package:better_enum/better_enum.dart';

class Meter extends Enum<int> {
  const Meter._internal(int val, {String name}): super(val, name);

  static const Meter HIGH = const Meter._internal(100, name: "HIGH");
  static const Meter MIDDLE = const Meter._internal(50);
  static const Meter LOW = const Meter._internal(10);
}

void main() {
  test('test Meter enum', () {
    expect(Meter.HIGH.value, 100);
    expect(Meter.HIGH.name, "HIGH");
    expect(Meter.HIGH.toString(), "Enum.Meter.HIGH:100");

    expect(Meter.MIDDLE.value, 50);
    expect(Meter.MIDDLE.name, null);
    expect(Meter.MIDDLE.toString(), "Enum.Meter.50");

    expect(Meter.LOW.value, 10);
    expect(Meter.LOW.name, null);
    expect(Meter.LOW.toString(), "Enum.Meter.10");
  });
}
