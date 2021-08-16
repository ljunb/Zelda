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
        .height(100)
        .width(100);
    
    UIView *view1 = [UIView new];
    view1.backgroundColor = UIColor.grayColor;
    [container addSubview:view1];
    view1.zelda.height(30).width(30);

    UIView *view2 = [UIView new];
    view2.backgroundColor = UIColor.blueColor;
    [container addSubview:view2];
    view2.zelda.height(30).width(30).marginHorizontal(10);

    [container.zelda applyLayout];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
