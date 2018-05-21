//
//  ModuleAService.h
//  BeeHive-demo1
//
//  Created by w22543 on 2018/5/18.
//  Copyright © 2018年 Hytera. All rights reserved.
//

#import "BHService.h"
#import <Foundation/Foundation.h>

@interface ModuleAService : NSObject<ModuleAServiceProtocol>

- (UIViewController *)getModuleAMainViewController;

- (void)pushToModuleAOneViewController;

@end
