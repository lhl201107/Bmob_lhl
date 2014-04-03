//
//  AppDelegate.m
//  Meun
//
//  Created by kangmei_teach03 on 14-4-3.
//  Copyright (c) 2014年 kangmei_teach03. All rights reserved.
//

#import "AppDelegate.h"

#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)



@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

//    ViewController *vc = [[ViewController alloc]init];
    HomeViewController *vc = [[HomeViewController alloc]init];
    
    SlideNavigationController *slide = [[SlideNavigationController alloc]initWithRootViewController:vc];
    
    self.window.rootViewController =slide;
    
    MeunViewController *meun = [[MeunViewController alloc]init];
    [SlideNavigationController sharedInstance].leftMenu = meun;
    
    
    if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"7.0")) {
        [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:13/255.0 green:139/255.0 blue:180/255.0 alpha:1]];
        [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    }
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
    // Status bar white
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
