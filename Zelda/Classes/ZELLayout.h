//
//  ZELLayout.h
//  Zelda
//
//  Created by linjunbing on 2021/8/14.
//

#import <Foundation/Foundation.h>
#import <YogaKit/UIView+Yoga.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, ZFlexDirection) {
    ZFlexDirectionRow,
    ZFlexDirectionRowReverse,
    ZFlexDirectionColumn,
    ZFlexDirectionColumnReserve
};


@interface ZELLayout : NSObject

+ (instancetype)layoutWithView:(UIView *)view;

- (ZELLayout *(^)(ZFlexDirection value))flexDirection;
- (ZELLayout *(^)(YGJustify value))justifyContent;
- (ZELLayout *(^)(YGAlign value))alignItems;

- (ZELLayout *(^)(CGFloat value))flex;
- (ZELLayout *(^)(CGFloat value))flexGrow;
- (ZELLayout *(^)(CGFloat value))flexShrink;
- (ZELLayout *(^)(CGFloat value))flexBasis;

- (ZELLayout *(^)(CGFloat value))left;
- (ZELLayout *(^)(CGFloat value))top;
- (ZELLayout *(^)(CGFloat value))right;
- (ZELLayout *(^)(CGFloat value))bottom;
- (ZELLayout *(^)(CGFloat value))start;
- (ZELLayout *(^)(CGFloat value))end;

- (ZELLayout *(^)(CGFloat value))marginLeft;
- (ZELLayout *(^)(CGFloat value))marginTop;
- (ZELLayout *(^)(CGFloat value))marginRight;
- (ZELLayout *(^)(CGFloat value))marginBottom;
- (ZELLayout *(^)(CGFloat value))marginStart;
- (ZELLayout *(^)(CGFloat value))marginEnd;
- (ZELLayout *(^)(CGFloat value))marginHorizontal;
- (ZELLayout *(^)(CGFloat value))marginVertical;
- (ZELLayout *(^)(CGFloat value))margin;

- (ZELLayout *(^)(CGFloat value))paddingLeft;
- (ZELLayout *(^)(CGFloat value))paddingTop;
- (ZELLayout *(^)(CGFloat value))paddingRight;
- (ZELLayout *(^)(CGFloat value))paddingBottom;
- (ZELLayout *(^)(CGFloat value))paddingStart;
- (ZELLayout *(^)(CGFloat value))paddingEnd;
- (ZELLayout *(^)(CGFloat value))paddingHorizontal;
- (ZELLayout *(^)(CGFloat value))paddingVertical;
- (ZELLayout *(^)(CGFloat value))padding;

- (ZELLayout *(^)(CGFloat value))borderLeftWidth;
- (ZELLayout *(^)(CGFloat value))borderTopWidth;
- (ZELLayout *(^)(CGFloat value))borderRightWidth;
- (ZELLayout *(^)(CGFloat value))borderBottomWidth;
- (ZELLayout *(^)(CGFloat value))borderStartWidth;
- (ZELLayout *(^)(CGFloat value))borderEndWidth;
- (ZELLayout *(^)(CGFloat value))borderWidth;

- (ZELLayout *(^)(CGFloat value))width;
- (ZELLayout *(^)(CGFloat value))height;
- (ZELLayout *(^)(CGFloat value))minWidth;
- (ZELLayout *(^)(CGFloat value))minHeight;
- (ZELLayout *(^)(CGFloat value))maxWidth;
- (ZELLayout *(^)(CGFloat value))maxHeight;

- (void)apply;

@end

NS_ASSUME_NONNULL_END
