#import "Fraction.h"

int main(int argc, char** argv)
{
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];

        [aFraction setTo:-1 over:4];
        [bFraction setTo:-1 over:2];

        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");

        Fraction *resultFraction = [aFraction add: bFraction];
        [resultFraction print];
    }

    return 0;
}