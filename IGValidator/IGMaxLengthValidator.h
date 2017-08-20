//
//  MaxLengthValidator.h
//  test
//
//  Created by longe on 17/8/20.
//  Copyright © 2017年 hbyundu. All rights reserved.
//

#import "IGValidator.h"

@interface IGMaxLengthValidator : IGValidator

@property (nonatomic, assign) NSInteger maxLength;

- (id)initWithMaxLength:(NSInteger)maxLength message:(NSString *)message;

@end
