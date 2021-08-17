//
//  ZELLayout.m
//  Zelda
//
//  Created by linjunbing on 2021/8/14.
//

#import "ZDLayout.h"
#import <YogaKit/UIView+Yoga.h>

#define ZELDA_YGVALUE_PROPERTY_GETTER(property)              \
- (ZDLayout * _Nonnull (^)(CGFloat))property {               \
    return ^(CGFloat value){                                 \
        self.view.yoga.property = YGPointValue(value);       \
        return self;                                         \
    };                                                       \
}                                                            \
- (CGFloat)zd_##property {                                   \
    return self.view.yoga.property.value;                    \
}

#define ZELDA_YGPERCENTVALUE_PROPERTY_GETTER(property)       \
- (ZDLayout * _Nonnull (^)(CGFloat))per_##property {         \
    return ^(CGFloat value){                                 \
        self.view.yoga.property = YGPercentValue(value);     \
        return self;                                         \
    };                                                       \
}                                                            \
ZELDA_YGVALUE_PROPERTY_GETTER(property)

#define ZELDA_FLOAT_PROPERTY_GETTER(property)                \
- (ZDLayout * _Nonnull (^)(CGFloat))property {               \
    return ^(CGFloat value){                                 \
        self.view.yoga.property = value;                     \
        return self;                                         \
    };                                                       \
}                                                            \
- (CGFloat)zd_##property {                                   \
    return self.view.yoga.property;                          \
}

#define ZELDA_ALIGN_PROPERTY_GETTER(property)                   \
- (ZDLayout * _Nonnull (^)(ZDAlign))property {                  \
    return ^(ZDAlign value) {                                   \
        switch (value) {                                        \
            case ZDAlignAuto:                                   \
                self.view.yoga.property = YGAlignAuto;          \
                break;                                          \
            case ZDAlignCenter:                                 \
                self.view.yoga.property = YGAlignCenter;        \
                break;                                          \
            case ZDAlignFlexStart:                              \
                self.view.yoga.property = YGAlignFlexStart;     \
                break;                                          \
            case ZDAlignFlexEnd:                                \
                self.view.yoga.property = YGAlignFlexEnd;       \
                break;                                          \
            case ZDAlignStretch:                                \
                self.view.yoga.property = YGAlignStretch;       \
                break;                                          \
            case ZDAlignBaseline:                               \
                self.view.yoga.property = YGAlignBaseline;      \
                break;                                          \
            case ZDAlignSpaceAround:                            \
                self.view.yoga.property = YGAlignSpaceAround;   \
                break;                                          \
            case ZDAlignSpaceBetween:                           \
                self.view.yoga.property = YGAlignSpaceBetween;  \
                break;                                          \
        }                                                       \
        return self;                                            \
    };                                                          \
}


@interface ZDLayout ()

@property (nonatomic, weak) UIView *view;

@end

@implementation ZDLayout

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

- (ZDLayout * _Nonnull (^)(ZDDirection))direction {
    return ^(ZDDirection value) {
        switch (value) {
            case ZDDirectionInherit:
                self.view.yoga.direction = YGDirectionInherit;
                break;
            case ZDDirectionLTR:
                self.view.yoga.direction = YGDirectionLTR;
                break;
            case ZDDirectionRTL:
                self.view.yoga.direction = YGDirectionRTL;
                break;
        }
        return self;
    };
}

- (ZDLayout * _Nonnull (^)(ZDFlexDirection))flexDirection {
    return ^(ZDFlexDirection value){
        switch (value) {
            case ZDFlexDirectionRow:
                self.view.yoga.flexDirection = YGFlexDirectionRow;
                break;
            case ZDFlexDirectionRowReverse:
                self.view.yoga.flexDirection = YGFlexDirectionRowReverse;
                break;
            case ZDFlexDirectionColumn:
                self.view.yoga.flexDirection = YGFlexDirectionColumn;
                break;
            case ZDFlexDirectionColumnReserve:
                self.view.yoga.flexDirection = YGFlexDirectionColumnReverse;
                break;
        }
        return self;
    };
}

- (ZDLayout * _Nonnull (^)(ZDJustify))justifyContent {
    return ^(ZDJustify value) {
        switch (value) {
            case ZDJustifyCenter:
                self.view.yoga.justifyContent = YGJustifyCenter;
                break;
            case ZDJustifyFlexStart:
                self.view.yoga.justifyContent = YGJustifyFlexStart;
                break;
            case ZDJustifyFlexEnd:
                self.view.yoga.justifyContent = YGJustifyFlexEnd;
                break;
            case ZDJustifySpaceAround:
                self.view.yoga.justifyContent = YGJustifySpaceAround;
                break;
            case ZDJustifySpaceBetween:
                self.view.yoga.justifyContent = YGJustifySpaceBetween;
                break;
            case ZDJustifySpaceEvenly:
                self.view.yoga.justifyContent = YGJustifySpaceEvenly;
                break;
        }
        return self;
    };
}

- (ZDLayout * _Nonnull (^)(ZDPositionType))position {
    return ^(ZDPositionType value) {
        switch (value) {
            case ZDPositionTypeRelative:
                self.view.yoga.position = YGPositionTypeRelative;
                break;
            case ZDPositionTypeAbsolute:
                self.view.yoga.position = YGPositionTypeAbsolute;
                break;
        }
        return self;
    };
}

- (ZDLayout * _Nonnull (^)(ZDWrap))flexWrap {
    return ^(ZDWrap value) {
        switch (value) {
            case ZDWrapWrap:
                self.view.yoga.flexWrap = YGWrapWrap;
                break;
            case ZDWrapWrapReverse:
                self.view.yoga.flexWrap = YGWrapWrapReverse;
                break;
            case ZDWrapNoWrap:
                self.view.yoga.flexWrap = YGWrapNoWrap;
                break;
        }
        return self;
    };
}

- (ZDLayout * _Nonnull (^)(ZDOverflow))overflow {
    return ^(ZDOverflow value) {
        switch (value) {
            case ZDOverflowHidden:
                self.view.yoga.overflow = YGOverflowHidden;
                break;
            case ZDOverflowVisible:
                self.view.yoga.overflow = YGOverflowVisible;
                break;
            case ZDOverflowScroll:
                self.view.yoga.overflow = YGOverflowScroll;
                break;
        }
        return self;
    };
}

- (ZDLayout * _Nonnull (^)(ZDDisplay))display {
    return ^(ZDDisplay value) {
        switch (value) {
            case ZDDisplayFlex:
                self.view.yoga.display = YGDisplayFlex;
                break;
            case ZDDisplayNone:
                self.view.yoga.display = YGDisplayNone;
                break;
        }
        return self;
    };
}

ZELDA_ALIGN_PROPERTY_GETTER(alignContent);
ZELDA_ALIGN_PROPERTY_GETTER(alignItems);
ZELDA_ALIGN_PROPERTY_GETTER(alignSelf);

ZELDA_FLOAT_PROPERTY_GETTER(flex);
ZELDA_FLOAT_PROPERTY_GETTER(flexGrow);
ZELDA_FLOAT_PROPERTY_GETTER(flexShrink);
ZELDA_YGVALUE_PROPERTY_GETTER(flexBasis);

ZELDA_YGVALUE_PROPERTY_GETTER(left);
ZELDA_YGVALUE_PROPERTY_GETTER(top);
ZELDA_YGVALUE_PROPERTY_GETTER(right);
ZELDA_YGVALUE_PROPERTY_GETTER(bottom);
ZELDA_YGVALUE_PROPERTY_GETTER(start);
ZELDA_YGVALUE_PROPERTY_GETTER(end);

ZELDA_YGVALUE_PROPERTY_GETTER(marginLeft);
ZELDA_YGVALUE_PROPERTY_GETTER(marginTop);
ZELDA_YGVALUE_PROPERTY_GETTER(marginRight);
ZELDA_YGVALUE_PROPERTY_GETTER(marginBottom);
ZELDA_YGVALUE_PROPERTY_GETTER(marginStart);
ZELDA_YGVALUE_PROPERTY_GETTER(marginEnd);
ZELDA_YGVALUE_PROPERTY_GETTER(marginHorizontal);
ZELDA_YGVALUE_PROPERTY_GETTER(marginVertical);
ZELDA_YGVALUE_PROPERTY_GETTER(margin);

ZELDA_YGVALUE_PROPERTY_GETTER(paddingLeft);
ZELDA_YGVALUE_PROPERTY_GETTER(paddingTop);
ZELDA_YGVALUE_PROPERTY_GETTER(paddingRight);
ZELDA_YGVALUE_PROPERTY_GETTER(paddingBottom);
ZELDA_YGVALUE_PROPERTY_GETTER(paddingStart);
ZELDA_YGVALUE_PROPERTY_GETTER(paddingEnd);
ZELDA_YGVALUE_PROPERTY_GETTER(paddingHorizontal);
ZELDA_YGVALUE_PROPERTY_GETTER(paddingVertical);
ZELDA_YGVALUE_PROPERTY_GETTER(padding);

ZELDA_FLOAT_PROPERTY_GETTER(borderLeftWidth);
ZELDA_FLOAT_PROPERTY_GETTER(borderTopWidth);
ZELDA_FLOAT_PROPERTY_GETTER(borderRightWidth);
ZELDA_FLOAT_PROPERTY_GETTER(borderBottomWidth);
ZELDA_FLOAT_PROPERTY_GETTER(borderStartWidth);
ZELDA_FLOAT_PROPERTY_GETTER(borderEndWidth);
ZELDA_FLOAT_PROPERTY_GETTER(borderWidth);

ZELDA_YGPERCENTVALUE_PROPERTY_GETTER(width);
ZELDA_YGPERCENTVALUE_PROPERTY_GETTER(height);
ZELDA_YGPERCENTVALUE_PROPERTY_GETTER(minWidth);
ZELDA_YGPERCENTVALUE_PROPERTY_GETTER(minHeight);
ZELDA_YGPERCENTVALUE_PROPERTY_GETTER(maxWidth);
ZELDA_YGPERCENTVALUE_PROPERTY_GETTER(maxHeight);


- (void)applyLayout {
    [self applyLayoutPreservingOrigin:NO];
}

- (void)applyLayoutPreservingOrigin:(BOOL)preserveOrigin {
    [self.view.yoga applyLayoutPreservingOrigin:preserveOrigin];
}

@end
