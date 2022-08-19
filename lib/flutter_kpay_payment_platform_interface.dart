import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_kpay_payment_method_channel.dart';

abstract class FlutterKpayPaymentPlatform extends PlatformInterface {
  /// Constructs a FlutterKpayPaymentPlatform.
  FlutterKpayPaymentPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterKpayPaymentPlatform _instance = MethodChannelFlutterKpayPayment();

  /// The default instance of [FlutterKpayPaymentPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterKpayPayment].
  static FlutterKpayPaymentPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterKpayPaymentPlatform] when
  /// they register themselves.
  static set instance(FlutterKpayPaymentPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
