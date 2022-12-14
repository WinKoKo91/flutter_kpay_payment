#import "FlutterKpayPaymentPlugin.h"
#if __has_include(<flutter_kpay_payment/flutter_kpay_payment-Swift.h>)
#import <flutter_kpay_payment/flutter_kpay_payment-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_kpay_payment-Swift.h"
#endif

@implementation FlutterKpayPaymentPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterKpayPaymentPlugin registerWithRegistrar:registrar];
}
@end
