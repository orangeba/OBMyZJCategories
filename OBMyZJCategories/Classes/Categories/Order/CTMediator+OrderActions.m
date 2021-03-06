//
//  CTMediator+OrderActions.m
//  OBModuleDemo
//
//  Created by syh on 2019/2/22.
//  Copyright © 2019 syh. All rights reserved.
//

#import "CTMediator+OrderActions.h"

@implementation CTMediator (OrderActions)


//与每个组件的 Target_xxx 文件后的 xxx 一致
NSString * const kCTMediatorTargetOrder = @"Order";

//与每个组件的 Target_xxx.h 文件中定义的 Action_xxx 的 xxx 一致
NSString * const kCTMediatorActionNativeOrderController = @"nativeOrderController";


- (UIViewController *)CTMediator_viewControllerForOrder:(NSDictionary *)dic {
    UIViewController *viewController = [self performTarget:kCTMediatorTargetOrder
                                                    action:kCTMediatorActionNativeOrderController
                                                    params:dic
                                         shouldCacheTarget:NO
                                        ];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        NSLog(@"订单未成功");
        return [[UIViewController alloc] init];
    }
}

@end
