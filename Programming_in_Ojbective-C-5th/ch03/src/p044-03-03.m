#import <Foundation/Foundation.h>

//---- interface section ----
@interface Fraction: NSObject
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
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
@end

//---- program section ----
int main(int argc, char** argv)
{
    @autoreleasepool {
        Fraction *myFrac1 = [[Fraction alloc] init];
        Fraction *myFrac2 = [[Fraction alloc] init];

        [myFrac1 setNumerator: 2];
        [myFrac1 setDenominator: 3];

        [myFrac2 setNumerator: 3];
        [myFrac2 setDenominator: 7];

        NSLog(@"Frist fraction is");
        [myFrac1 print];

        NSLog(@"Second fraction is");
        [myFrac2 print];
    }

    return 0;
}