//
//  IGRegexpValidator.h
//  test
//
//  Created by longe on 17/8/20.
//  Copyright © 2017年 hbyundu. All rights reserved.
//

#import "IGValidator.h"

@interface IGRegexpValidator : IGValidator

@property (nonatomic, copy) NSString *regexp;

- (id)initWithRegexp:(NSString *)regexp message:(NSString *)message;

@end
