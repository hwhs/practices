#import "Fraction.h"

@interface Fraction (Comparison)
-(BOOL) isEqualTo:(Fraction *)f;
-(int) compare:(Fraction *)f;
@end