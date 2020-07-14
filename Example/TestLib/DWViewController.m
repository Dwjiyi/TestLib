//
//  DWViewController.m
//  TestLib
//
//  Created by Dwjiyi on 07/14/2020.
//  Copyright (c) 2020 Dwjiyi. All rights reserved.
//

#import "DWViewController.h"
#import <TestLib/DWTestManager.h>

@interface DWViewController ()

@end

@implementation DWViewController

- (void)viewDidLoad
{

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    for (NSInteger i = 1; i < 9; i++) {
        UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(100, (i + 1) * 50, UIScreen.mainScreen.bounds.size.width - 200, 30);
        button.tag = i;
        [button setTitle:[NSString stringWithFormat:@"%ld",i] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        button.backgroundColor = [UIColor greenColor];
        [self.view addSubview:button];
    }
    
    [[[DWTestManager alloc] init] testLog];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
