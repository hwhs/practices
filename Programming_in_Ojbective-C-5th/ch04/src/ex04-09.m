#import <Foundation/Foundation.h>

@interface Calculator: NSObject
-(void) setAccmulator: (double) value;
-(void) clear;
-(double) accumulator;

-(double) add: (double)value;
-(double) subtract: (double)value;
-(double) multiply: (double)value;
-(double) divide: (double)value;

-(double) changeSign;
-(double) reciprocal;
-(double) xSquared;
@end

@implementation Calculator
{
    double accumulator;
}

-(void) setAccmulator: (double) value
{
    accumulator = value;
}

-(void) clear
{
    accumulator = 0;
}

-(double) accumulator
{
    return accumulator;
}

-(double) add: (double)value
{
    accumulator += value;
    return accumulator;
}

-(double) subtract: (double)value
{
    accumulator -= value;
    return accumulator;
}

-(double) multiply: (double)value
{
    accumulator *= value;
    return accumulator;
}

-(double) divide: (double)value
{
    accumulator /= value;
    return accumulator;
}

-(double) changeSign
{
    accumulator = -accumulator;
    return accumulator;
}

-(double) reciprocal
{
    accumulator = 1/accumulator;
    return accumulator;
}

-(double) xSquared
{
    accumulator *= accumulator;
    return accumulator;
}
@end

int main(int argc, char** argv)
{
    @autoreleasepool {
        Calculator *deskCalc = [[Calculator alloc] init];

        [deskCalc setAccmulator:100.0];
        NSLog(@"set to 100.0 : %g", [deskCalc accumulator]);
        NSLog(@"add 200 : %g", [deskCalc add:200]);
        NSLog(@"divide 15 : %g", [deskCalc divide:15.0]);
        NSLog(@"subtract 10 : %g", [deskCalc subtract:10.0]);
        NSLog(@"multiply 5 : %g", [deskCalc multiply:5]);
        NSLog(@"changeSign is %g", [deskCalc changeSign]);
        NSLog(@"square is %g", [deskCalc xSquared]);
        NSLog(@"reciprocal is %g", [deskCalc reciprocal]);
    }

    return 0;
}