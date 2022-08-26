#import <Foundation/Foundation.h>

//---- interface section ----
@interface Fraction: NSObject
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;
@end

//---- implementation section ----
@implementation Fraction
{
    int numerator;
    int denominator;
}

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n;
{
    numerator = n;
}

-(void) setDenominator: (int) d;
{
    denominator = d;
}

-(int) numerator
{
    return numerator;
}

-(int) denominator
{
    return denominator;
}

-(double) convertToNum
{
    if (denominator != 0)
        return (double)numerator/denominator;
    else
        return NAN;
}
@end

//---- program section ----
int main(int argc, char** argv)
{
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];

        [aFraction setNumerator: 1];
        [aFraction setDenominator: 4];
        [aFraction print];
        NSLog(@" =");
        NSLog(@" %g", [aFraction convertToNum]);

        [aFraction setNumerator: 5];
        [aFraction setDenominator: 1];
        [aFraction print];
        NSLog(@" =");
        NSLog(@" %g", [aFraction convertToNum]);

        [aFraction setNumerator: 0];
        [aFraction setDenominator: 5];
        [aFraction print];
        NSLog(@" =");
        NSLog(@" %g", [aFraction convertToNum]);

        [bFraction print];
        NSLog(@" =");
        NSLog(@" %g", [bFraction convertToNum]);
    }

    return 0;
}