#import "RNTToast.h"
#import <React/RCTUtils.h>
#import "HeroToast-Swift.h"

@implementation RNTToast

static Toast *toast = nil;

+ (BOOL)requiresMainQueueSetup {
    return YES;
}

- (dispatch_queue_t)methodQueue {
    return dispatch_get_main_queue();
}

- (NSDictionary *)constantsToExport {
    return @{
        @"TYPE_SUCCESS": @"success",
        @"TYPE_ERROR": @"error",
        @"TYPE_TEXT": @"text",

        @"DURATION_LONG": @"long",
        @"DURATION_SHORT": @"short",

        @"POSITION_TOP": @"top",
        @"POSITION_CENTER": @"center",
        @"POSITION_BOTTOM": @"bottom",
    };
}

RCT_EXPORT_MODULE(RNTToast);

RCT_EXPORT_METHOD(show:(NSDictionary*)options) {

    if (toast == nil) {
        ToastConfiguration *configuration = [[ToastConfiguration alloc] init];
        toast = [[Toast alloc] initWithConfiguration:configuration];
    }

    UIViewController *viewController = RCTPresentedViewController();

    [toast showWithText:options[@"text"]
                   type:options[@"type"]
               duration:options[@"duration"]
               position:options[@"position"]
                   view:viewController.view
    ];

}

@end
