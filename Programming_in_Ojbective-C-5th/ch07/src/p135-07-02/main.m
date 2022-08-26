#import "Fraction.h"

int main(int argc, char** argv)
{
    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc] init];

        myFraction.numerator = 1;
        myFraction.denominator = 3;

        NSLog(@"The numerator is %i, and the denominator is %i",
            myFraction.numerator, myFraction.denominator);
    }

    return 0;
}