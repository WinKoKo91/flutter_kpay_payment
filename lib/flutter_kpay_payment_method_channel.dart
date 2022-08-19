import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_kpay_payment_platform_interface.dart';

/// An implementation of [FlutterKpayPaymentPlatform] that uses method channels.
class MethodChannelFlutterKpayPayment extends FlutterKpayPaymentPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_kpay_payment');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
