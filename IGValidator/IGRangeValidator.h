//
//  IGRangeValidator.h
//  test
//
//  Created by longe on 17/8/20.
//  Copyright © 2017年 hbyundu. All rights reserved.
//

#import "IGValidator.h"

@interface IGRangeValidator : IGValidator

@property (nonatomic, assign) NSRange range;

- (id)initWithRange:(NSRange)range message:(NSString *)message;

@end
