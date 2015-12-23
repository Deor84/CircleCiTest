//
//  AppDelegate.m
//  Test
//
//  Created by Michal Wierzbinski on 25/06/2015.
//  Copyright (c) 2015 Michal Wierzbinski. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    BOOL isActive = [UIApplication sharedApplication].applicationState == UIApplicationStateActive;
    NSLog(@"applicationWillResignActive isActive %i", isActive);
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    BOOL isActive = [UIApplication sharedApplication].applicationState == UIApplicationStateActive;
    NSLog(@"applicationDidEnterBackground isActive %i", isActive);
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    BOOL isActive = [UIApplication sharedApplication].applicationState == UIApplicationStateActive;
    NSLog(@"applicationWillEnterForeground isActive %i", isActive);
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    BOOL isActive = [UIApplication sharedApplication].applicationState == UIApplicationStateActive;
    NSLog(@"applicationDidBecomeActive isActive %i", isActive);
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    BOOL isActive = [UIApplication sharedApplication].applicationState == UIApplicationStateActive;
    NSLog(@"applicationWillTerminate isActive %i", isActive);
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
