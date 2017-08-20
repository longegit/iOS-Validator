//
//  IGNumericValidator.m
//  test
//
//  Created by longe on 17/8/20.
//  Copyright © 2017年 hbyundu. All rights reserved.
//

#import "IGNumericValidator.h"

@implementation IGNumericValidator

- (id)initWithMessage:(NSString *)message {
    self = [super initWithMessage:message];
    if (self) {
    }
    
    return self;
}

- (BOOL)condition:(NSString *)value {
    if (value.length == 0) {
        return NO;
    }
    
    NSError *error = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[0-9]" options:0 error:&error];
    return [regex numberOfMatchesInString:value options:0 range:NSMakeRange(0, value.length)] == value.length;
}

@end
