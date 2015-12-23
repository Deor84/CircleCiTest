//
//  ViewController.m
//  Test
//
//  Created by Michal Wierzbinski on 25/06/2015.
//  Copyright (c) 2015 Michal Wierzbinski. All rights reserved.
//

#import "ViewController.h"
#import "TestLabel.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)awakeFromNib
{
    [super awakeFromNib];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    TestLabel *l = [[TestLabel alloc] initWithFont:[UIFont systemFontOfSize:32.f] text:@"Gylkopg"];
//    [self.view addSubview:l];
    UIImage *img = [UIImage imageNamed:@"budoka"];
    UIView *imgVIEW = [[UIImageView alloc] initWithImage:img];
    [self.view addSubview:imgVIEW];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 200, 60);
//    [button setTitle:@"Dupa" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setImage:img forState:UIControlStateNormal];
    button.center = self.view.center;
    [self.view addSubview:button];
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(someMethod1) name:UIApplicationDidFinishLaunchingNotification object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(someMethod2) name:UIApplicationDidBecomeActiveNotification object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(someMethod3) name:UIApplicationWillEnterForegroundNotification object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(someMethod4) name:UIApplicationWillResignActiveNotification object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(someMethod5) name:UIApplicationWillTerminateNotification object:nil];
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)someMethod1
{
    BOOL isActive = [UIApplication sharedApplication].applicationState == UIApplicationStateActive;

    NSLog(@"UIApplicationDidFinishLaunchingNotification isActive %i", isActive);
}

-(void)someMethod2
{
    BOOL isActive = [UIApplication sharedApplication].applicationState == UIApplicationStateActive;
    NSLog(@"UIApplicationDidBecomeActiveNotification isActive %i", isActive);
}

-(void)someMethod3
{
    BOOL isActive = [UIApplication sharedApplication].applicationState == UIApplicationStateActive;
    NSLog(@"UIApplicationWillEnterForegroundNotification isActive %i", isActive);
}

-(void)someMethod4
{
    BOOL isActive = [UIApplication sharedApplication].applicationState == UIApplicationStateActive;
    NSLog(@"UIApplicationWillResignActiveNotification isActive %i", isActive);
}

-(void)someMethod5
{
    BOOL isActive = [UIApplication sharedApplication].applicationState == UIApplicationStateActive;
    NSLog(@"UIApplicationWillTerminateNotification isActive %i", isActive);
}

@end
