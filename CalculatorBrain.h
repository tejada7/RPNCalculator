//
//  CalculatorBrain.h
//  RPNCalculator
//
//  Created by Favio on 5/4/16.
//  Copyright © 2016 Favio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

@property (nonatomic) NSMutableArray * operandArray;

- (void) pushOperand:(double) operand;

- (double) performOperation:(NSString *) operand;

@end
