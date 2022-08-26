#import "Fraction.h"

int main(int argc, char** argv)
{
    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc] init];

        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];

        NSLog(@"The value of myFraction is:");
        [myFraction print];
    }

    return 0;
}