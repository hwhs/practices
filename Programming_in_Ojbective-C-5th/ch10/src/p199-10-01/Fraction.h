#import <Foundation/Foundation.h>

// The Fraction class

@interface Fraction : NSObject

@property int numerator, denominator;

-(Fraction *) initWith: (int) n over: (int) d;
-(void) print;
-(void) setTo:(int) n over:(int) d;
-(double) convertToNum;
-(Fraction *) add:(Fraction *)f;
-(void) reduce;
@end