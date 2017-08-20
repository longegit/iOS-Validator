//
//  IGRequireValidator.m
//  test
//
//  Created by longe on 17/8/20.
//  Copyright © 2017年 hbyundu. All rights reserved.
//

#import "IGRequireValidator.h"

@implementation IGRequireValidator

- (id)initWithMessage:(NSString *)message {
    self = [super initWithMessage:message];
    if (self) {
    }
    
    return self;
}

- (BOOL)condition:(NSString *)value {
    return value.length != 0;
}

@end
