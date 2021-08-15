//
//  ZELLayout.h
//  Zelda
//
//  Created by linjunbing on 2021/8/14.
//

#import <Foundation/Foundation.h>
#import <YogaKit/UIView+Yoga.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZELLayout : NSObject

+ (instancetype)layoutWithView:(UIView *)view;

- (ZELLayout *(^)(YGFlexDirection value))flexDirection;
- (ZELLayout *(^)(YGJustify value))justifyContent;
- (ZELLayout *(^)(YGAlign value))alignItems;
- (ZELLayout *(^)(CGFloat value))width;
- (ZELLayout *(^)(CGFloat value))height;
- (ZELLayout *(^)(CGFloat value))margin;

- (void)apply;

@end

NS_ASSUME_NONNULL_END
