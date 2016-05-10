//
//  ViewController.h
//  RPNCalculator
//
//  Created by Favio on 4/20/16.
//  Copyright © 2016 Favio. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "CalculatorBrain.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *result;
@property (strong, nonatomic) CalculatorBrain * calculator;
@end

