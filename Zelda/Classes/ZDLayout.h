//
//  ZELLayout.h
//  Zelda
//
//  Created by linjunbing on 2021/8/14.
//

#import <Foundation/Foundation.h>
#import <YogaKit/UIView+Yoga.h>

NS_ASSUME_NONNULL_BEGIN


#define ZELDA_YGVALUE_PROPERTY(property)            \
- (ZDLayout *(^)(CGFloat value))property;           \
- (CGFloat)zd_##property;

#define ZELDA_YGPERCENTVALUE_PROPERTY(property)     \
- (ZDLayout *(^)(CGFloat value))per_##property;     \
ZELDA_YGVALUE_PROPERTY(property)


#define ZELDA_FLOAT_PROPERTY(property)              \
- (ZDLayout *(^)(CGFloat value))property;           \
- (CGFloat)zd_##property;


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


ZELDA_FLOAT_PROPERTY(flex);
ZELDA_FLOAT_PROPERTY(flexGrow);
ZELDA_FLOAT_PROPERTY(flexShrink);
ZELDA_YGVALUE_PROPERTY(flexBasis);

ZELDA_YGVALUE_PROPERTY(left);
ZELDA_YGVALUE_PROPERTY(top);
ZELDA_YGVALUE_PROPERTY(right);
ZELDA_YGVALUE_PROPERTY(bottom);
ZELDA_YGVALUE_PROPERTY(start);
ZELDA_YGVALUE_PROPERTY(end);

ZELDA_YGVALUE_PROPERTY(marginLeft);
ZELDA_YGVALUE_PROPERTY(marginTop);
ZELDA_YGVALUE_PROPERTY(marginRight);
ZELDA_YGVALUE_PROPERTY(marginBottom);
ZELDA_YGVALUE_PROPERTY(marginStart);
ZELDA_YGVALUE_PROPERTY(marginEnd);
ZELDA_YGVALUE_PROPERTY(marginHorizontal);
ZELDA_YGVALUE_PROPERTY(marginVertical);
ZELDA_YGVALUE_PROPERTY(margin);

ZELDA_YGVALUE_PROPERTY(paddingLeft);
ZELDA_YGVALUE_PROPERTY(paddingTop);
ZELDA_YGVALUE_PROPERTY(paddingRight);
ZELDA_YGVALUE_PROPERTY(paddingBottom);
ZELDA_YGVALUE_PROPERTY(paddingStart);
ZELDA_YGVALUE_PROPERTY(paddingEnd);
ZELDA_YGVALUE_PROPERTY(paddingHorizontal);
ZELDA_YGVALUE_PROPERTY(paddingVertical);
ZELDA_YGVALUE_PROPERTY(padding);

ZELDA_FLOAT_PROPERTY(borderLeftWidth);
ZELDA_FLOAT_PROPERTY(borderTopWidth);
ZELDA_FLOAT_PROPERTY(borderRightWidth);
ZELDA_FLOAT_PROPERTY(borderBottomWidth);
ZELDA_FLOAT_PROPERTY(borderStartWidth);
ZELDA_FLOAT_PROPERTY(borderEndWidth);
ZELDA_FLOAT_PROPERTY(borderWidth);

ZELDA_YGPERCENTVALUE_PROPERTY(width);
ZELDA_YGPERCENTVALUE_PROPERTY(height);
ZELDA_YGPERCENTVALUE_PROPERTY(minWidth);
ZELDA_YGPERCENTVALUE_PROPERTY(minHeight);
ZELDA_YGPERCENTVALUE_PROPERTY(maxWidth);
ZELDA_YGPERCENTVALUE_PROPERTY(maxHeight);

- (void)applyLayout;
- (void)applyLayoutPreservingOrigin:(BOOL)preserveOrigin;

@end

NS_ASSUME_NONNULL_END
