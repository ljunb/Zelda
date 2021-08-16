//
//  ZELLayout.m
//  Zelda
//
//  Created by linjunbing on 2021/8/14.
//

#import "ZELLayout.h"
#import <YogaKit/UIView+Yoga.h>


#define ZELDA_YGVALUE_PROPERTY(property)                     \
- (ZELLayout * _Nonnull (^)(CGFloat))property {              \
    return ^(CGFloat value){                                 \
        self.view.yoga.property = YGPointValue(value);       \
        return self;                                         \
    };                                                       \
}

#define ZELDA_FLOAT_PROPERTY(property)                     \
- (ZELLayout * _Nonnull (^)(CGFloat))property {              \
    return ^(CGFloat value){                                 \
        self.view.yoga.property = value;                     \
        return self;                                         \
    };                                                       \
}


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

- (ZELLayout * _Nonnull (^)(ZFlexDirection))flexDirection {
    return ^(ZFlexDirection value){
        switch (value) {
            case ZFlexDirectionRow:
                self.view.yoga.flexDirection = YGFlexDirectionRow;
                break;
            case ZFlexDirectionRowReverse:
                self.view.yoga.flexDirection = YGFlexDirectionRowReverse;
                break;
            case ZFlexDirectionColumn:
                self.view.yoga.flexDirection = YGFlexDirectionColumn;
                break;
            case ZFlexDirectionColumnReserve:
                self.view.yoga.flexDirection = YGFlexDirectionColumnReverse;
                break;
        }
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

@end
