import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_kpay_payment/flutter_kpay_payment.dart';
import 'package:flutter_kpay_payment/flutter_kpay_payment_platform_interface.dart';
import 'package:flutter_kpay_payment/flutter_kpay_payment_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterKpayPaymentPlatform 
    with MockPlatformInterfaceMixin
    implements FlutterKpayPaymentPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterKpayPaymentPlatform initialPlatform = FlutterKpayPaymentPlatform.instance;

  test('$MethodChannelFlutterKpayPayment is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterKpayPayment>());
  });

  test('getPlatformVersion', () async {
    FlutterKpayPayment flutterKpayPaymentPlugin = FlutterKpayPayment();
    MockFlutterKpayPaymentPlatform fakePlatform = MockFlutterKpayPaymentPlatform();
    FlutterKpayPaymentPlatform.instance = fakePlatform;
  
    expect(await flutterKpayPaymentPlugin.getPlatformVersion(), '42');
  });
}
