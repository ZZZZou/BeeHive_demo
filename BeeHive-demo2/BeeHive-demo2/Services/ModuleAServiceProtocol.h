//
//  ModuleAServiceProtocol.h
//  BeeHive-demo1
//
//  Created by w22543 on 2018/5/18.
//  Copyright © 2018年 Hytera. All rights reserved.
//

#import "BHServiceProtocol.h"
#import <Foundation/Foundation.h>

@protocol ModuleAServiceProtocol <NSObject, BHServiceProtocol>

- (UIViewController *)getModuleAMainViewController;

- (void)pushToModuleAOneViewController;

@end
