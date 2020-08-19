//
//  GlobalModuleRouter.m
//  RouterDemo
//
//  Created by 廖文韬 on 2018/7/16.
//  Copyright © 2018年 廖文韬. All rights reserved.
//

#import "GlobalModuleRouter.h"
#import "MGJRouter.h"
#import <ModuleCViewController.h>
#import <ModuleDViewController.h>

@implementation GlobalModuleRouter

// 在load方法中自动注册，在主工程中不用写任何代码。
+ (void)load {

    [MGJRouter registerURLPattern:@"ModuleC://Test/ModuleCViewController" toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *navigationVC = routerParameters[MGJRouterParameterUserInfo][@"navigationVC"];
        // block
        void(^block)(NSString *) = routerParameters[MGJRouterParameterUserInfo][@"block"];
        NSString *title = routerParameters[MGJRouterParameterUserInfo][@"title"];
        ModuleCViewController *vc = [[ModuleCViewController alloc] init];
        vc.title = title;
        [navigationVC pushViewController:vc animated:YES];
    }];


    [MGJRouter registerURLPattern:@"ModuleC://Test/ModuleDViewController" toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *navigationVC = routerParameters[MGJRouterParameterUserInfo][@"navigationVC"];
        // block
        void(^block)(NSString *) = routerParameters[MGJRouterParameterUserInfo][@"block"];
        NSString *title = routerParameters[MGJRouterParameterUserInfo][@"title"];
        ModuleDViewController *vc = [[ModuleDViewController alloc] init];
        vc.title = title;
        [navigationVC pushViewController:vc animated:YES];
    }];

}


@end
