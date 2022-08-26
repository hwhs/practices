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

-(double) memoryClear;
-(double) memoryStore;
-(double) memoryRecall;
-(double) memoryAdd: (double)value;
-(double) memorySubtract: (double)value;
@end

@implementation Calculator
{
    double accumulator;
    double memory;
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

-(double) memoryClear
{
    memory = 0;
    return memory;
}

-(double) memoryStore
{
    accumulator = memory;
    return memory;
}

-(double) memoryRecall;
{
    memory = accumulator;
    return memory;
}

-(double) memoryAdd: (double)value;
{
    memory += value;
    return memory;
}

-(double) memorySubtract: (double)value;
{
    memory -= value;
    return memory;
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
        NSLog(@"result to memory : %g", [deskCalc memoryRecall]);
        NSLog(@"memory add 20 : %g", [deskCalc memoryAdd:20]);
        NSLog(@"memory sub 10 : %g", [deskCalc memorySubtract:10]);
        NSLog(@"store : %g", [deskCalc memoryStore]);
        NSLog(@"accumulator: %g", [deskCalc accumulator]);
        NSLog(@"clear memory: %g", [deskCalc memoryClear]);
    }

    return 0;
}