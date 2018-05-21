//
//  ModuleCViewController.m
//  BeeHive-demo1
//
//  Created by w22543 on 2018/5/18.
//  Copyright © 2018年 Hytera. All rights reserved.
//

#import "BHService.h"
#import "ModuleCViewController.h"

@BeeHiveService(ModuleCServiceProtocol,ModuleCViewController)
@interface ModuleCViewController ()<ModuleCServiceProtocol>

@end

@implementation ModuleCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc]initWithFrame:self.view.bounds];
    label.backgroundColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:20];
    label.text = @"Module C";
    [self.view addSubview:label];
}



@end
