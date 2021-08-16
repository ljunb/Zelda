//
//  ZELLayout.h
//  Zelda
//
//  Created by linjunbing on 2021/8/14.
//

#import <Foundation/Foundation.h>
#import <YogaKit/UIView+Yoga.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, ZDDirection) {
    ZDDirectionInherit,
    ZDDirectionLTR,
    ZDDirectionRTL,
};

typedef NS_ENUM(NSUInteger, ZDFlexDirection) {
    ZDFlexDirectionRow,
    ZDFlexDirectionRowReverse,
    ZDFlexDirectionColumn,
    ZDFlexDirectionColumnReserve
};

typedef NS_ENUM(NSUInteger, ZDJustify) {
    ZDJustifyFlexStart,
    ZDJustifyCenter,
    ZDJustifyFlexEnd,
    ZDJustifySpaceBetween,
    ZDJustifySpaceAround,
    ZDJustifySpaceEvenly
};

typedef NS_ENUM(NSUInteger, ZDAlign) {
    ZDAlignAuto,
    ZDAlignFlexStart,
    ZDAlignCenter,
    ZDAlignFlexEnd,
    ZDAlignStretch,
    ZDAlignBaseline,
    ZDAlignSpaceBetween,
    ZDAlignSpaceAround,
};

typedef NS_ENUM(NSUInteger, ZDPositionType) {
    ZDPositionTypeRelative,
    ZDPositionTypeAbsolute,
};

typedef NS_ENUM(NSUInteger, ZDWrap) {
    ZDWrapNoWrap,
    ZDWrapWrap,
    ZDWrapWrapReverse,
};

typedef NS_ENUM(NSUInteger, ZDOverflow) {
    ZDOverflowVisible,
    ZDOverflowHidden,
    ZDOverflowScroll,
};

typedef NS_ENUM(NSUInteger, ZDDisplay) {
    ZDDisplayFlex,
    ZDDisplayNone,
};


@interface ZDLayout : NSObject

+ (instancetype)layoutWithView:(UIView *)view;

- (ZDLayout *(^)(ZDDirection value))direction;
- (ZDLayout *(^)(ZDFlexDirection value))flexDirection;
- (ZDLayout *(^)(ZDJustify value))justifyContent;
- (ZDLayout *(^)(ZDAlign value))alignContent;
- (ZDLayout *(^)(ZDAlign value))alignItems;
- (ZDLayout *(^)(ZDAlign value))alignSelf;
- (ZDLayout *(^)(ZDPositionType value))position;
- (ZDLayout *(^)(ZDWrap value))flexWrap;
- (ZDLayout *(^)(ZDOverflow value))overflow;
- (ZDLayout *(^)(ZDDisplay value))display;

- (ZDLayout *(^)(CGFloat value))flex;
- (ZDLayout *(^)(CGFloat value))flexGrow;
- (ZDLayout *(^)(CGFloat value))flexShrink;
- (ZDLayout *(^)(CGFloat value))flexBasis;

- (ZDLayout *(^)(CGFloat value))left;
- (ZDLayout *(^)(CGFloat value))top;
- (ZDLayout *(^)(CGFloat value))right;
- (ZDLayout *(^)(CGFloat value))bottom;
- (ZDLayout *(^)(CGFloat value))start;
- (ZDLayout *(^)(CGFloat value))end;

- (ZDLayout *(^)(CGFloat value))marginLeft;
- (ZDLayout *(^)(CGFloat value))marginTop;
- (ZDLayout *(^)(CGFloat value))marginRight;
- (ZDLayout *(^)(CGFloat value))marginBottom;
- (ZDLayout *(^)(CGFloat value))marginStart;
- (ZDLayout *(^)(CGFloat value))marginEnd;
- (ZDLayout *(^)(CGFloat value))marginHorizontal;
- (ZDLayout *(^)(CGFloat value))marginVertical;
- (ZDLayout *(^)(CGFloat value))margin;

- (ZDLayout *(^)(CGFloat value))paddingLeft;
- (ZDLayout *(^)(CGFloat value))paddingTop;
- (ZDLayout *(^)(CGFloat value))paddingRight;
- (ZDLayout *(^)(CGFloat value))paddingBottom;
- (ZDLayout *(^)(CGFloat value))paddingStart;
- (ZDLayout *(^)(CGFloat value))paddingEnd;
- (ZDLayout *(^)(CGFloat value))paddingHorizontal;
- (ZDLayout *(^)(CGFloat value))paddingVertical;
- (ZDLayout *(^)(CGFloat value))padding;

- (ZDLayout *(^)(CGFloat value))borderLeftWidth;
- (ZDLayout *(^)(CGFloat value))borderTopWidth;
- (ZDLayout *(^)(CGFloat value))borderRightWidth;
- (ZDLayout *(^)(CGFloat value))borderBottomWidth;
- (ZDLayout *(^)(CGFloat value))borderStartWidth;
- (ZDLayout *(^)(CGFloat value))borderEndWidth;
- (ZDLayout *(^)(CGFloat value))borderWidth;

- (ZDLayout *(^)(CGFloat value))width;
- (ZDLayout *(^)(CGFloat value))height;
- (ZDLayout *(^)(CGFloat value))minWidth;
- (ZDLayout *(^)(CGFloat value))minHeight;
- (ZDLayout *(^)(CGFloat value))maxWidth;
- (ZDLayout *(^)(CGFloat value))maxHeight;

- (void)applyLayout;
- (void)applyLayoutPreservingOrigin:(BOOL)preserveOrigin;

@end

NS_ASSUME_NONNULL_END
