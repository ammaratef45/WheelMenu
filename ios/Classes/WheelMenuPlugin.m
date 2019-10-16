#import "WheelMenuPlugin.h"
#import <wheel_menu/wheel_menu-Swift.h>

@implementation WheelMenuPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftWheelMenuPlugin registerWithRegistrar:registrar];
}
@end
