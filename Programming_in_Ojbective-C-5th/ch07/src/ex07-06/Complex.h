#import <Foundation/Foundation.h>

@interface Complex: NSObject
-(void) setReal: (double)a;
-(void) setImaginary: (double)b;

-(void) print;
-(double) real;
-(double) imaginary;
-(Complex *) add: (Complex *)complexNum;
@end