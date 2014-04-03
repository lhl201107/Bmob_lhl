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
#import "CViewController.h"

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

    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(70, 40,120, 120)];
    CALayer *lay = imageView.layer;//获取ImageView的层
    [lay setMasksToBounds:YES];
    [lay setCornerRadius:60.0];
    imageView.backgroundColor = [UIColor whiteColor];
    imageView.image = [UIImage imageNamed:@"1234.jpg"];
    [self.view addSubview:imageView];
    
    
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
    [loginOut setTitle:@"C" forState:UIControlStateNormal];
    [loginOut setBackgroundColor:[UIColor orangeColor]];
    [loginOut addTarget:self action:@selector(moveToC:) forControlEvents:UIControlEventTouchUpInside];
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

-(void)moveToC:(id)sender
{
    CViewController *cvc = [[CViewController alloc]init];
    [[SlideNavigationController sharedInstance] switchToViewController:cvc withCompletion:nil];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
