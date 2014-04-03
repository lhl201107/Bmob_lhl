//
//  ViewController.m
//  Meun
//
//  Created by kangmei_teach03 on 14-4-3.
//  Copyright (c) 2014年 kangmei_teach03. All rights reserved.
//

#import "ViewController.h"
#import "HomeViewController.h"
#import "SlideNavigationController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.navigationController.navigationBar setHidden:YES];
    
    
    self.view.backgroundColor =  [UIColor colorWithRed:240/255.0 green:240/255.0 blue:230/255.0 alpha:1];
    

    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    loginBtn.frame = CGRectMake(100, 200, 100, 50);
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [loginBtn addTarget:self action:@selector(moveToHome:) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:loginBtn];


}


-(void)viewWillAppear:(BOOL)animated
{
    [self.navigationController.navigationBar setHidden:YES];
}


-(void)viewDidDisappear:(BOOL)animated
{
//    [self.navigationController.navigationBar setHidden:NO];
}


-(void)moveToHome:(id)sender
{
    
    
    HomeViewController *home = [[HomeViewController alloc]init];
    
//    [self.navigationController pushViewController:home animated:YES];
    
    [[SlideNavigationController sharedInstance] switchToViewController:home withCompletion:nil];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
