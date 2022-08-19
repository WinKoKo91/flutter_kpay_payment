import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_kpay_payment/flutter_kpay_payment_method_channel.dart';

void main() {
  MethodChannelFlutterKpayPayment platform = MethodChannelFlutterKpayPayment();
  const MethodChannel channel = MethodChannel('flutter_kpay_payment');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
