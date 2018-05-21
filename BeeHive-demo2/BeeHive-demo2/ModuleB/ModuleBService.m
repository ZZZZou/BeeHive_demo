//
//  ModuleBService.m
//  BeeHive-demo1
//
//  Created by w22543 on 2018/5/18.
//  Copyright © 2018年 Hytera. All rights reserved.
//

#import "ModuleBOneViewController.h"
#import "ModuleBViewController.h"
#import "ModuleBService.h"

@implementation ModuleBService

- (UIViewController *)getModuleBMainViewController{
    return [ModuleBViewController new];
}

- (void)pushToModuleBOneViewController{
    UITabBarController *tab = (UITabBarController *)[UIApplication sharedApplication].delegate.window.rootViewController;
    UINavigationController *nav = tab.selectedViewController;
    ModuleBOneViewController *one = [ModuleBOneViewController new];
    
    [nav pushViewController:one animated:YES];
}

@end
