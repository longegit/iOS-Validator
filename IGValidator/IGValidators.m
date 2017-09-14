//
//  IGValidators.m
//  test
//
//  Created by apple on 2017/8/18.
//  Copyright © 2017年 hbyundu. All rights reserved.
//

#import "IGValidators.h"
#import "IGValidator.h"

@interface IGValidators ()

@property (nonatomic, copy) NSMutableArray *rules;

@end

@implementation IGValidators

- (id)init {
    self = [super init];
    if (self) {
        _rules = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)putWithView:(UIView *)view validators:(NSArray *)validators {
    IGRule *rule = [[IGRule alloc] init];
    rule.view = view;
    rule.validators = [NSArray arrayWithArray:validators];
    [self.rules addObject:rule];
}

- (IGValidator *)validateBlockWithSuccess:(void (^)())success failure:(void (^)(IGValidator *))failure {
    IGValidator *failedValidator = [self validateAllRules];
    if (failedValidator == nil) {
        !success? : success();
    } else {
        !failure? : failure(failedValidator);
    }
    return failedValidator;
}

- (IGValidator *)validateView:(UIView *)view success:(void (^)())success failure:(void (^)(IGValidator *))failure {
    IGValidator *failedValidator = [self validateView:view];
    if (failedValidator == nil) {
        !success? : success();
    } else {
        !failure? : failure(failedValidator);
    }
    return failedValidator;
}

- (IGValidator *)validateAllRules {
    for (IGRule *rule in self.rules) {
        if (rule == nil) {
            continue;
        }
        for (IGValidator *validator in rule.validators) {
            if (![validator isValid:rule.view]) {
                return validator;
            }
        }
    }
    
    return nil;
}

- (IGValidator *)validateView:(UIView *)view {
    for (IGRule *rule in self.rules) {
        if (rule == nil || view != rule.view) {
            continue;
        }
        for (IGValidator *validator in rule.validators) {
            if (![validator isValid:rule.view]) {
                return validator;
            }
        }
    }
    
    return nil;
}

@end

@implementation IGRule

@end
