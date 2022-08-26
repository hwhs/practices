#import "Complex.h"

@implementation Complex
{
    double real;
    double imaginary;
}

-(void) setReal: (double)a
{
    real = a;
}

-(void) setImaginary: (double)b
{
    imaginary = b;
}

-(void) print
{
    NSLog(@"Complex(%f + %f i)", real, imaginary);
}

-(double) real
{
    return real;
}

-(double) imaginary
{
    return imaginary;
}

-(Complex *) add: (Complex *)complexNum
{
    Complex *newCom = [Complex new];

    newCom.real = real + complexNum.real;
    newCom.imaginary = imaginary + complexNum.imaginary;
    return newCom;
}
@end