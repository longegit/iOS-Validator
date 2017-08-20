//
//  IGValidators.h
//  test
//
//  Created by apple on 2017/8/18.
//  Copyright © 2017年 hbyundu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IGValidator;
@class IGRule;

@interface IGValidators : NSObject

- (void)putWithView:(UIView *)view validators:(NSArray *)validators;
- (BOOL)validateBlockWithSuccess:(void (^)())success failure:(void (^)(IGValidator *))failure;

@end

@interface IGRule : NSObject

@property (nonatomic, copy) NSArray *validators;

@property (nonatomic, strong) UIView *view;

@end
