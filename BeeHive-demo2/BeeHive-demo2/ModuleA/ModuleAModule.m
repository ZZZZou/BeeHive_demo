//
//  ModuleAModule.m
//  BeeHive-demo2
//
//  Created by zzzou on 2018/5/19.
//  Copyright © 2018年 wang. All rights reserved.
//

#import "ModuleAModule.h"
#import "BHService.h"

@BeeHiveMod(ModuleAModule)
@interface ModuleAModule() <BHModuleProtocol>
@end

@implementation ModuleAModule

- (void)modContinueUserActivity:(BHContext *)context{
    
    NSUserActivity *userActivity = context.userActivityItem.userActivity;
    if ([userActivity.activityType isEqualToString:@"com.company.app.moduleA.one"]) {
    
        id<ModuleAServiceProtocol> moduleAService = [[BeeHive shareInstance] createService:@protocol(ModuleAServiceProtocol)];
        [moduleAService pushToModuleAOneViewController];
    }
}

@end
