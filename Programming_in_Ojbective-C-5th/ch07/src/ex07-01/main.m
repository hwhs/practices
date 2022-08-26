#import "Fraction.h"

int main(int argc, char** argv)
{
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];

        [aFraction setTo:1 over:2];
        [bFraction setTo:1 over:4];

        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");
        Fraction *result1 = [aFraction add: bFraction];
        [result1 print];

        [aFraction print];
        NSLog(@"-");
        [bFraction print];
        NSLog(@"=");
        Fraction *result2 = [aFraction subtract: bFraction];
        [result2 print];

        [aFraction print];
        NSLog(@"*");
        [bFraction print];
        NSLog(@"=");
        Fraction *result3 = [aFraction multiply: bFraction];
        [result3 print];

        [aFraction print];
        NSLog(@"/");
        [bFraction print];
        NSLog(@"=");
        Fraction *result4 = [aFraction divide: bFraction];
        [result4 print];
    }

    return 0;
}