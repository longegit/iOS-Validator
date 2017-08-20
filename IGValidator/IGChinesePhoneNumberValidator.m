//
//  IGChinesePhoneNumberValidator.m
//  test
//
//  Created by longe on 17/8/20.
//  Copyright © 2017年 hbyundu. All rights reserved.
//

#import "IGChinesePhoneNumberValidator.h"

@implementation IGChinesePhoneNumberValidator

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
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^((13[0-9])|(15[^4,\\D])|(18[0-9])|(17[0,6-8])|14[57])\\d{8}$" options:NSRegularExpressionCaseInsensitive error:&error];
    return [regex numberOfMatchesInString:value options:0 range:NSMakeRange(0, value.length)] == 1;
}

@end
