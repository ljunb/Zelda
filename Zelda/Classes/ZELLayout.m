//
//  ZELLayout.m
//  Zelda
//
//  Created by linjunbing on 2021/8/14.
//

#import "ZELLayout.h"
#import <YogaKit/UIView+Yoga.h>

@interface ZELLayout ()

@property (nonatomic, weak) UIView *view;

@end

@implementation ZELLayout

+ (instancetype)layoutWithView:(UIView *)view {
    return [[self alloc] initWithView:view];
}

- (instancetype)initWithView:(UIView *)view {
    if (self = [super init]) {
        self.view = view;
        self.view.yoga.isEnabled = YES;
    }
    return self;
}

- (void)apply {
    [self.view.yoga applyLayoutPreservingOrigin:NO];
}

- (ZELLayout * _Nonnull (^)(YGFlexDirection))flexDirection {
    return ^(YGFlexDirection value){
        self.view.yoga.flexDirection = value;
        return self;
    };
}

- (ZELLayout * _Nonnull (^)(YGJustify))justifyContent {
    return ^(YGJustify value){
        self.view.yoga.justifyContent = value;
        return self;
    };
}

- (ZELLayout * _Nonnull (^)(YGAlign))alignItems {
    return ^(YGAlign value){
        self.view.yoga.alignItems = value;
        return self;
    };
}


- (ZELLayout * _Nonnull (^)(CGFloat))width {
    return ^(CGFloat value){
        self.view.yoga.width = YGPointValue(value);
        return self;
    };
}

- (ZELLayout * _Nonnull (^)(CGFloat))height {
    return ^(CGFloat value){
        self.view.yoga.height = YGPointValue(value);
        return self;
    };
}

- (ZELLayout * _Nonnull (^)(CGFloat))margin {
    return ^(CGFloat value){
        self.view.yoga.margin = YGPointValue(value);
        return self;
    };
}

@end
