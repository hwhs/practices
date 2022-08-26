#import "Fraction.h"

int main(int argc, char** argv)
{
    @autoreleasepool {
        Fraction *a, *b, *c;

        NSLog(@"Fractions allocated: %i", [Fraction count]);

        a = [[Fraction allocF] init];
        b = [[Fraction allocF] init];
        c = [[Fraction allocF] init];

        NSLog(@"Fractions allocated: %i", [Fraction count]);
    }

    return 0;
}