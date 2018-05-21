//
//  ModuleBModule.m
//  BeeHive-demo2
//
//  Created by zzzou on 2018/5/19.
//  Copyright © 2018年 wang. All rights reserved.
//

#import "ModuleBModule.h"
#import "BHService.h"

@BeeHiveMod(ModuleBModule)
@interface ModuleBModule() <BHModuleProtocol>

@end

@implementation ModuleBModule

- (void)modContinueUserActivity:(BHContext *)context{
    
    NSUserActivity *userActivity = context.userActivityItem.userActivity;
   
    
    if ([userActivity.activityType isEqualToString:@"com.company.app.moduleB.one"]) {
        
        id<ModuleBServiceProtocol> moduleBService = [[BeeHive shareInstance] createService:@protocol(ModuleBServiceProtocol)];
        [moduleBService pushToModuleBOneViewController];
        
    }
}
@end
