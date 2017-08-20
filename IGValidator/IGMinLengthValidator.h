//
//  IGMinLengthValidator.h
//  test
//
//  Created by longe on 17/8/20.
//  Copyright © 2017年 hbyundu. All rights reserved.
//

#import "IGValidator.h"

@interface IGMinLengthValidator : IGValidator

@property (nonatomic, assign) NSInteger minLength;

- (id)initWithMinLength:(NSInteger)minLength message:(NSString *)message;

@end
