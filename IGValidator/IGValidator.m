//
//  IGBaseValidator.m
//  test
//
//  Created by apple on 2017/8/18.
//  Copyright © 2017年 hbyundu. All rights reserved.
//

#import "IGValidator.h"
#import <UIKit/UIKit.h>

@interface IGValidator()

@end

@implementation IGValidator

- (id)initWithMessage:(NSString *)message {
    self = [super init];
    if (self) {
        _message = message;
    }
    
    return self;
}

- (BOOL)isValid:(UIView *)view {
    NSAssert(view != nil, @"view is nil");
    if ([view isKindOfClass:[UITextField class]]
        || [view isKindOfClass:[UITextView class]]
        || [view isKindOfClass:[UILabel class]]) {
        NSString *value = [view valueForKey:@"text"];
        if (value != nil) {
            return [self condition:value];
        }
    } else if ([view isKindOfClass:[UIImageView class]]) {
        UIImage *image = [view valueForKey:@"image"];
        if (image != nil) {
            return [self condition:image];
        }
    }

    return NO;
}

- (BOOL)condition:(id)value {
    return NO;
}

@end
