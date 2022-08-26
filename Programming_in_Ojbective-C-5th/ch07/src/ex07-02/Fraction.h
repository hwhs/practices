#import <Foundation/Foundation.h>

// The Fraction class

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print;
-(void) print:(bool) d;
-(void) setTo:(int) n over:(int) d;
-(double) convertToNum;
-(Fraction *) add:(Fraction *)f;
-(void) reduce;
@end