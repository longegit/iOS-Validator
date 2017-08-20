//
//  IGMinLengthValidator.m
//  test
//
//  Created by longe on 17/8/20.
//  Copyright © 2017年 hbyundu. All rights reserved.
//

#import "IGMinLengthValidator.h"

@implementation IGMinLengthValidator

- (id)initWithMinLength:(NSInteger)minLength message:(NSString *)message {
    self = [super initWithMessage:message];
    if (self) {
        _minLength = minLength;
    }
    
    return self;
}

- (BOOL)condition:(NSString *)value {
    return value.length >= self.minLength;
}


@end
