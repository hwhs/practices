#import "FractionComparison.h"

@implementation Fraction (Comparison)
-(BOOL) isEqualTo:(Fraction *)f
{
    [self reduce];
    [f reduce];

    if (self.denominator==f.denominator && self.numerator==self.numerator)
        return true;
    else
        return false;
}

-(int) compare:(Fraction *)f
{
    [self reduce];
    [f reduce];

    int a = self.numerator*f.denominator-self.denominator*f.numerator;

    int result;
    if (a > 0)
        result = 1;
    else if (a == 0)
        result = 0;
    else
        result = -1;

    return result;
}
@end