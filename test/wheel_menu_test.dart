import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wheel_menu/wheel_menu.dart';

void main() {
  const MethodChannel channel = MethodChannel('wheel_menu');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await WheelMenu.platformVersion, '42');
  });
}
