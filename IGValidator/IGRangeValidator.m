//
//  IGRangeValidator.m
//  test
//
//  Created by longe on 17/8/20.
//  Copyright © 2017年 hbyundu. All rights reserved.
//

#import "IGRangeValidator.h"

@implementation IGRangeValidator

- (id)initWithRange:(NSRange)range message:(NSString *)message {
    self = [super initWithMessage:message];
    if (self) {
        _range = range;
    }
    
    return self;
}

- (BOOL)condition:(NSString *)value {
    if (self.range.location == 0 && self.range.length == 0) {
        return YES;
    }
    
    if (value.length == 0) {
        return NO;
    }
    
    NSError *error = nil;
    NSString *regexString = [NSString stringWithFormat:@"^.{%tu,%tu}$", _range.location, _range.length];
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:regexString options:0 error:&error];
    return [regex numberOfMatchesInString:value options:0 range:NSMakeRange(0, value.length)] == 1;
}

@end
