//
//  ViewController.m
//  RPNCalculator
//
//  Created by Favio on 4/20/16.
//  Copyright © 2016 Favio. All rights reserved.
//
#import "CalculatorBrain.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize result = _result;

- (void)viewDidLoad {
    [super viewDidLoad];
    _calculator = [[CalculatorBrain alloc] init];
}



- (IBAction)buttonAction:(UIButton*)sender {
    NSString *text = _result.text;
    if ([text isEqualToString:@"0"])
        text = @"";
    text = [text stringByAppendingString:sender.currentTitle];
    text = [text stringByAppendingString:@" "];
    _result.text = text;
}


- (IBAction)eventEnter:(UIButton*)sender {
    [_calculator pushOperand:[_result.text doubleValue]];
    [self clearEvent];
}

- (void)clearEvent {
    _result.text = @"";
}


- (IBAction)operationPressed:(UIButton*)sender {
    double result = [_calculator performOperation:sender.currentTitle];
    _result.text = [[NSNumber numberWithDouble:result] stringValue];
}

- (IBAction)cPressed:(UIButton *)sender {
    [self clearEvent];
}

@end
