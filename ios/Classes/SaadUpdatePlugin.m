#import "SaadUpdatePlugin.h"
#if __has_include(<saad_update/saad_update-Swift.h>)
#import <saad_update/saad_update-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "saad_update-Swift.h"
#endif

@implementation SaadUpdatePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSaadUpdatePlugin registerWithRegistrar:registrar];
}
@end
