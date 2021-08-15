//
//  UIView+Zelda.m
//  Zelda
//
//  Created by linjunbing on 2021/8/14.
//

#import "UIView+Zelda.h"
#import <objc/runtime.h>

static const void *kZeldaAssociatedKey = &kZeldaAssociatedKey;

@implementation UIView (Zelda)

- (ZELLayout *)zelda {
    ZELLayout *zelda = objc_getAssociatedObject(self, kZeldaAssociatedKey);
    if (!zelda) {
        zelda = [ZELLayout layoutWithView:self];
        objc_setAssociatedObject(self, kZeldaAssociatedKey, zelda, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return zelda;
}

@end
