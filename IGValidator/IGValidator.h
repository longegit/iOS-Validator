//
//  IGBaseValidator.h
//  test
//
//  Created by apple on 2017/8/18.
//  Copyright © 2017年 hbyundu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IGValidator : NSObject

@property (nonatomic, copy) NSString *message;

- (id)initWithMessage:(NSString *)message;

- (BOOL)condition:(id)value;

- (BOOL)isValid:(UIView *)view;

@end
