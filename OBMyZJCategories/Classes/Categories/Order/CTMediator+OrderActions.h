//
//  CTMediator+OrderActions.h
//  OBModuleDemo
//
//  Created by syh on 2019/2/22.
//  Copyright © 2019 syh. All rights reserved.
//

#import "CTMediator.h"

@interface CTMediator (OrderActions)

- (UIViewController *)CTMediator_viewControllerForOrder:(NSDictionary *)dic;

@end

