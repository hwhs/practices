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
        double value1, value2;
        char operator;
        Calculator *deskCalc = [[Calculator alloc] init];
 
        NSLog(@"Type in your expression.");
        scanf("%lf %c %lf", &value1, &operator, &value2);

        [deskCalc setAccmulator:value1];
 
        switch (operator) {
            case '+':
                [deskCalc add:value2];
                break;
            case '-':
                [deskCalc subtract:value2];
                break;
            case '*':
                [deskCalc multiply:value2];
                break;
            case '/':
                [deskCalc divide:value2];
                break;
            default:
                NSLog(@"Unknown operator.");
                break;
        }

        NSLog(@"%.2f", [deskCalc accumulator]);
    }

    return 0;
}