#import "Fraction.h"

@interface Fraction (MathOps)
-(Fraction *) add:(Fraction *)f;
-(Fraction *) sub:(Fraction *)f;
-(Fraction *) mul:(Fraction *)f;
-(Fraction *) div:(Fraction *)f;
@end