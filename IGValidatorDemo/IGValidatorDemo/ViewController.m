//
//  ViewController.m
//  ValidatorDemo
//
//  Created by longe on 17/8/20.
//  Copyright © 2017年 itgoo. All rights reserved.
//

#import "ViewController.h"
#import "IGValidators.h"
#import "IGMaxLengthValidator.h"
#import "IGMinLengthValidator.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITextField *textField;

@property (nonatomic, strong) IGValidators *validators;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _validators = [[IGValidators alloc] init];
    [self.validators putWithView:self.textField
                      validators:@[
                                   [[IGMinLengthValidator alloc] initWithMinLength:5 message:@"文本长度不能小于5"],
                                   [[IGMaxLengthValidator alloc] initWithMaxLength:10 message:@"文本长度不能超过10"]
                                   ]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)done:(id)sender {
    [self.validators validateBlockWithSuccess:^{
        
    } failure:^(IGValidator *validator) {
        UIAlertController *alertview=[UIAlertController alertControllerWithTitle:@"提示" message:validator.message preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancel=[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *defult = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
        [alertview addAction:cancel];
        [alertview addAction:defult];
        [self presentViewController:alertview animated:YES completion:nil];
    }];
}

@end
