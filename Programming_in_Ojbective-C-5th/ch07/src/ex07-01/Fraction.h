#import <Foundation/Foundation.h>

// The Fraction class

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print;
-(void) setTo:(int) n over:(int) d;
-(double) convertToNum;
-(Fraction *) add:(Fraction *)f;
-(Fraction *) subtract:(Fraction *)f;
-(Fraction *) multiply:(Fraction *)f;
-(Fraction *) divide:(Fraction *)f;
-(void) reduce;
@end