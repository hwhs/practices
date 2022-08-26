#import "Fraction.h"

int main(int argc, char** argv)
{
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];

        [aFraction setTo:100 over:200];
        [aFraction print];

        [aFraction setTo:1 over:3];
        [aFraction print];
    }

    return 0;
}