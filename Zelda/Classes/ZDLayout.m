//
//  ZELLayout.m
//  Zelda
//
//  Created by linjunbing on 2021/8/14.
//

#import "ZDLayout.h"
#import <YogaKit/UIView+Yoga.h>

#define ZELDA_YGVALUE_PROPERTY(property)                     \
- (ZDLayout * _Nonnull (^)(CGFloat))property {               \
    return ^(CGFloat value){                                 \
        self.view.yoga.property = YGPointValue(value);       \
        return self;                                         \
    };                                                       \
}

#define ZELDA_FLOAT_PROPERTY(property)                       \
- (ZDLayout * _Nonnull (^)(CGFloat))property {               \
    return ^(CGFloat value){                                 \
        self.view.yoga.property = value;                     \
        return self;                                         \
    };                                                       \
}

#define ZELDA_ALIGN_PROPERTY(property)                          \
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

ZELDA_ALIGN_PROPERTY(alignContent);
ZELDA_ALIGN_PROPERTY(alignItems);
ZELDA_ALIGN_PROPERTY(alignSelf);

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

ZELDA_YGVALUE_PROPERTY(width);
ZELDA_YGVALUE_PROPERTY(height);
ZELDA_YGVALUE_PROPERTY(minWidth);
ZELDA_YGVALUE_PROPERTY(minHeight);
ZELDA_YGVALUE_PROPERTY(maxWidth);
ZELDA_YGVALUE_PROPERTY(maxHeight);


- (void)applyLayout {
    [self applyLayoutPreservingOrigin:NO];
}

- (void)applyLayoutPreservingOrigin:(BOOL)preserveOrigin {
    [self.view.yoga applyLayoutPreservingOrigin:preserveOrigin];
}

@end
