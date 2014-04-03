//
//  BViewController.m
//  Meun
//
//  Created by kangmei_teach03 on 14-4-3.
//  Copyright (c) 2014年 kangmei_teach03. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@end

@implementation BViewController


#pragma mark - SlideNavigationController Methods -

- (BOOL)slideNavigationControllerShouldDisplayLeftMenu
{
	return YES;
}

- (BOOL)slideNavigationControllerShouldDisplayRightMenu
{
	return NO;
}



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

    self.navigationItem.title = @"B page";

    self.view.backgroundColor =  [UIColor colorWithRed:240/255.0 green:240/255.0 blue:230/255.0 alpha:1];
    
    UILabel *lbl = [[UILabel alloc]init];
    lbl.text = @"this is B page";
    lbl.frame = CGRectMake(100, 200, 200, 30);
    [lbl setTextColor:[UIColor brownColor]];
    [self.view addSubview:lbl];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
