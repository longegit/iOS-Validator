//
//  IGEmailValidator.m
//  test
//
//  Created by apple on 2017/8/18.
//  Copyright © 2017年 hbyundu. All rights reserved.
//

#import "IGEmailValidator.h"

@implementation IGEmailValidator

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
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[+\\w\\.\\-']+@[a-zA-Z0-9-]+(\\.[a-zA-Z]{2,})+$" options:NSRegularExpressionCaseInsensitive error:&error];
    return [regex numberOfMatchesInString:value options:0 range:NSMakeRange(0, value.length)] == 1;
}

@end
