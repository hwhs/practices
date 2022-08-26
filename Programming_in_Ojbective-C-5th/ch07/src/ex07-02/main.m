#import "Fraction.h"

int main(int argc, char** argv)
{
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];

        [aFraction setTo:1 over:8];
        [bFraction setTo:3 over:8];

        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");

        Fraction *resultFraction = [aFraction add: bFraction];
        [resultFraction print:false];
        [resultFraction print:true];
    }

    return 0;
}