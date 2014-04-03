//
//  MeunViewController.m
//  Meun
//
//  Created by kangmei_teach03 on 14-4-3.
//  Copyright (c) 2014年 kangmei_teach03. All rights reserved.
//

#import "MeunViewController.h"
#import "SlideNavigationController.h"
#import "AViewController.h"

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


    self.view.backgroundColor = [UIColor greenColor];

    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    loginBtn.frame = CGRectMake(100, 200, 100, 50);
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [loginBtn addTarget:self action:@selector(moveToHome:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:loginBtn];
    
    
    
}

-(void)moveToHome:(id)sender
{

    AViewController *avc = [[AViewController alloc]init];
    
    [[SlideNavigationController sharedInstance] switchToViewController:avc withCompletion:nil];
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
