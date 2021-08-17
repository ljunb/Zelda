//
//  ZELViewController.m
//  Zelda
//
//  Created by ljunb on 08/14/2021.
//  Copyright (c) 2021 ljunb. All rights reserved.
//

#import "ZELViewController.h"
#import <Zelda/UIView+Zelda.h>

@interface ZELViewController ()

@end

@implementation ZELViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *container = [UIView new];
    container.backgroundColor = UIColor.redColor;
    [self.view addSubview:container];
    container
        .zelda
        .flexDirection(ZDFlexDirectionRow)
        .alignItems(ZDAlignCenter)
        .margin(100)
        .height(200)
        .width(200);
    
    UIView *view1 = [UIView new];
    view1.backgroundColor = UIColor.grayColor;
    [container addSubview:view1];
    view1.zelda.per_width(30).height(20);
    
    UIView *view2 = [UIView new];
    view2.backgroundColor = UIColor.blueColor;
    [container addSubview:view2];
    view2.zelda.per_width(70).height(40);

    [container.zelda applyLayout];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
