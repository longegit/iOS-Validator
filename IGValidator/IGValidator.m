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
    NSString *value = [view valueForKey:@"text"];
    if (value != nil) {
        return [self condition:value];
    }

    return NO;
}

- (BOOL)condition:(NSString *)value {
    return NO;
}

@end
