#import <Foundation/Foundation.h>

// The Fraction class

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print;
-(void) setTo:(int) n over:(int) d;
-(double) convertToNum;
-(void) add:(Fraction *)f;
-(void) reduce;
@end