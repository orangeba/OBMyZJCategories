//
//  CTMediator+CartActions.h
//  OBModuleDemo
//
//  Created by syh on 2019/2/22.
//  Copyright © 2019 syh. All rights reserved.
//

#import "CTMediator.h"

@interface CTMediator (CartActions)

- (UIViewController *)CTMediator_viewControllerForCart:(NSDictionary *)dic;
@end

