//
//  AppDelegate.m
//  BeeHive-demo1
//
//  Created by w22543 on 2018/5/18.
//  Copyright © 2018年 Hytera. All rights reserved.
//

#import "BHService.h"
#import "TabbarViewController.h"
#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [BHContext shareInstance].application = application;
    [BHContext shareInstance].launchOptions = launchOptions;
    [BHContext shareInstance].moduleConfigName = @"BeeHive.bundle/BeeHive";//可选，默认为BeeHive.bundle/BeeHive.plist
    [BHContext shareInstance].serviceConfigName = @"BeeHive.bundle/BHService";
    
    [BeeHive shareInstance].enableException = YES;
    [[BeeHive shareInstance] setContext:[BHContext shareInstance]];
    
    
    [super application:application didFinishLaunchingWithOptions:launchOptions];
    
    TabbarViewController *tab = [[TabbarViewController alloc]init];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = tab;
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler{
    
    
}

- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray * _Nullable))restorationHandler{
    
    UITabBarController *tab = (UITabBarController *)self.window.rootViewController;
    
    if ([userActivity.activityType isEqualToString:@"com.company.app.moduleA.one"]) {
        UINavigationController *nav = tab.selectedViewController;
        
        id<ModuleAServiceProtocol> moduleAService = [[BeeHive shareInstance] createService:@protocol(ModuleAServiceProtocol)];
        UIViewController *one = [moduleAService getModuleAOneViewController];
        [nav pushViewController:one animated:YES];
        
    }else if ([userActivity.activityType isEqualToString:@"com.company.app.moduleB.one"]) {
        UINavigationController *nav = tab.selectedViewController;
        
        id<ModuleBServiceProtocol> moduleBService = [[BeeHive shareInstance] createService:@protocol(ModuleBServiceProtocol)];
        UIViewController *one = [moduleBService getModuleBOneViewController];
        [nav pushViewController:one animated:YES];
        
    }
    return YES;
}


@end
