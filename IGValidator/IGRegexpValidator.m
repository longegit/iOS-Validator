//
//  IGRegexpValidator.m
//  test
//
//  Created by longe on 17/8/20.
//  Copyright © 2017年 hbyundu. All rights reserved.
//

#import "IGRegexpValidator.h"

@implementation IGRegexpValidator

- (id)initWithRegexp:(NSString *)regexp message:(NSString *)message {
    self = [super initWithMessage:message];
    if (self) {
        _regexp = regexp;
    }
    
    return self;
}

- (BOOL)condition:(NSString *)value {
    if (value.length == 0) {
        return NO;
    }
    
    NSError *error = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:self.regexp options:NSRegularExpressionCaseInsensitive error:&error];
    return [regex numberOfMatchesInString:value options:0 range:NSMakeRange(0, value.length)] == 1;
}


@end
