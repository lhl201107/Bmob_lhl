//
//  MeunViewController.m
//  Meun
//
//  Created by kangmei_teach03 on 14-4-3.
//  Copyright (c) 2014年 kangmei_teach03. All rights reserved.
//

#import "MeunViewController.h"
#import "SlideNavigationController.h"
#import "HomeViewController.h"
#import "AViewController.h"
#import "BViewController.h"

@interface MeunViewController ()

@end

@implementation MeunViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];

    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    loginBtn.frame = CGRectMake(10, 200, 240, 44);
    [loginBtn setTitle:@"Home" forState:UIControlStateNormal];
    [loginBtn setBackgroundColor:[UIColor orangeColor]];
    [loginBtn addTarget:self action:@selector(moveToHome:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn];
    
    UIButton *loginBtn1= [UIButton buttonWithType:UIButtonTypeSystem];
    loginBtn1.frame = CGRectMake(10, 270, 240, 44);
    [loginBtn1 setTitle:@"A" forState:UIControlStateNormal];
    [loginBtn1 setBackgroundColor:[UIColor orangeColor]];
    [loginBtn1 addTarget:self action:@selector(moveToA:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn1];
    
    UIButton *loginBtn2 = [UIButton buttonWithType:UIButtonTypeSystem];
    loginBtn2.frame = CGRectMake(10, 340, 240, 44);
    [loginBtn2 setTitle:@"B" forState:UIControlStateNormal];
    [loginBtn2 setBackgroundColor:[UIColor orangeColor]];
    [loginBtn2 addTarget:self action:@selector(moveToB:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn2];
    
    
    UIButton *loginOut = [UIButton buttonWithType:UIButtonTypeSystem];
    loginOut.frame = CGRectMake(10, 410, 240, 44);
    [loginOut setTitle:@"Login Out" forState:UIControlStateNormal];
    [loginOut setBackgroundColor:[UIColor orangeColor]];
    [loginOut addTarget:self action:@selector(loginOut:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginOut];
    
}

-(void)moveToHome:(id)sender
{
    HomeViewController *avc = [[HomeViewController alloc]init];
    [[SlideNavigationController sharedInstance] switchToViewController:avc withCompletion:nil];
}

-(void)moveToA:(id)sender
{
    AViewController *avc = [[AViewController alloc]init];
    [[SlideNavigationController sharedInstance] switchToViewController:avc withCompletion:nil];
}

-(void)moveToB:(id)sender
{
    BViewController *avc = [[BViewController alloc]init];
    [[SlideNavigationController sharedInstance] switchToViewController:avc withCompletion:nil];
}

-(void)loginOut:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"" message:@"确定要退出当前账号吗?" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [alert show];
    
    
    
    
}


-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex==1)
    {
        [[SlideNavigationController sharedInstance] popToRootViewControllerAnimated:YES];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
