#import <Foundation/Foundation.h>

@interface Calculator: NSObject
-(void) setAccmulator: (double) value;
-(void) clear;
-(double) accumulator;

-(void) add: (double)value;
-(void) subtract: (double)value;
-(void) multiply: (double)value;
-(void) divide: (double)value;
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

-(void) add: (double)value
{
    accumulator += value;
}

-(void) subtract: (double)value
{
    accumulator -= value;
}

-(void) multiply: (double)value
{
    accumulator *= value;
}

-(void) divide: (double)value
{
    accumulator /= value;
}

@end

int main(int argc, char** argv)
{
    @autoreleasepool {
        Calculator *deskCalc = [[Calculator alloc] init];

        [deskCalc setAccmulator:100.0];
        NSLog(@"set to 100.0 : %g", [deskCalc accumulator]);
        [deskCalc add:200];
        NSLog(@"add 200 : %g", [deskCalc accumulator]);
        [deskCalc divide:15.0];
        NSLog(@"divide 15 : %g", [deskCalc accumulator]);
        [deskCalc subtract:10.0];
        NSLog(@"subtract 10 : %g", [deskCalc accumulator]);
        [deskCalc multiply:5];
        NSLog(@"multiply 5");
        NSLog(@"The result is %g", [deskCalc accumulator]);
    }

    return 0;
}