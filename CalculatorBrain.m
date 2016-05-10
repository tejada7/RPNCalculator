//
//  CalculatorBrain.m
//  RPNCalculator
//
//  Created by Favio on 5/4/16.
//  Copyright © 2016 Favio. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

//Lazy initialization
-(NSMutableArray *)operandArray {
    if(!_operandArray)
        _operandArray = [[NSMutableArray alloc] init];
    return _operandArray;
}

//Adds a double element in a list
-(void)pushOperand:(double)operand {
    [self.operandArray addObject:[NSNumber numberWithDouble:operand]];
}

//args: + - x /
//According the operand, it performs the operation between
// the first two elements of the list
-(double)performOperation:(NSString *)operand {
    double tmp = 0;
    if ([_operandArray count] > 1){
        //first element
        tmp = [[_operandArray objectAtIndex:0] doubleValue];
        [_operandArray removeObjectAtIndex:0];
        NSLog(@"tmp es: %f", tmp);
        if([operand isEqualToString:@"+"]) {
            tmp += [[self.operandArray lastObject] doubleValue];
        }
        if([operand isEqualToString:@"-"]) {
            tmp -= [[self.operandArray lastObject] doubleValue];
        }
        if([operand isEqualToString:@"x"]) {
            tmp *= [[self.operandArray lastObject] doubleValue];
        }
        if([operand isEqualToString:@"/"]) {
            tmp/=[[self.operandArray lastObject] doubleValue];
        }
        [_operandArray removeAllObjects];
        [self pushOperand:tmp];
    }
    return tmp;
}

@end