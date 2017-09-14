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

@property (nonatomic, strong) IGValidator *errorValidator;

- (void)putWithView:(UIView *)view validators:(NSArray *)validators;
- (IGValidator *)validateBlockWithSuccess:(void (^)())success failure:(void (^)(IGValidator *))failure;
- (IGValidator *)validateView:(UIView *)view success:(void (^)())success failure:(void (^)(IGValidator *))failure;

@end

@interface IGRule : NSObject

@property (nonatomic, copy) NSArray *validators;

@property (nonatomic, strong) UIView *view;

@end
