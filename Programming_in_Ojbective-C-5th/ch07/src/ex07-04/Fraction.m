#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print
{
    if (numerator < denominator)
        NSLog(@"%i/%i", numerator, denominator);
    else if (numerator == denominator)
        NSLog(@"%i", 1);
    else {
        int a = numerator / denominator;
        int b = numerator - a*denominator;
        NSLog(@"%i %i/%i", a, b, denominator);
    }
}

-(double) convertToNum
{
    if (denominator != 0)
        return (double)numerator/denominator;
    else
        return NAN;
}

-(void) setTo:(int) n over:(int) d
{
    numerator = n;
    denominator = d;
}

-(Fraction *) add:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];

    result.numerator = numerator*f.denominator+denominator*f.numerator;
    result.denominator = denominator*f.denominator;

    [result reduce];

    return result;
}

-(void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;

    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }

    numerator /= u;
    denominator /= u;
}
@end