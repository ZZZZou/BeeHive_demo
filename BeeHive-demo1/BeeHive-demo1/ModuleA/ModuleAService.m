//
//  ModuleAService.m
//  BeeHive-demo1
//
//  Created by w22543 on 2018/5/18.
//  Copyright © 2018年 Hytera. All rights reserved.
//

#import "ModuleAOneViewController.h"
#import "ModuleAViewController.h"
#import "ModuleAService.h"

@implementation ModuleAService

- (UIViewController *)getModuleAMainViewController{
    return [ModuleAViewController new];
}

- (UIViewController *)getModuleAOneViewController{
    return [ModuleAOneViewController new];
}

@end
