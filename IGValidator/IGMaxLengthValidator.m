//
//  MaxLengthValidator.m
//  test
//
//  Created by longe on 17/8/20.
//  Copyright © 2017年 hbyundu. All rights reserved.
//

#import "IGMaxLengthValidator.h"

@implementation IGMaxLengthValidator

- (id)initWithMaxLength:(NSInteger)maxLength message:(NSString *)message {
    self = [super initWithMessage:message];
    if (self) {
        _maxLength = maxLength;
    }
    
    return self;
}

- (BOOL)condition:(NSString *)value {
    return value.length <= self.maxLength;
}

@end
