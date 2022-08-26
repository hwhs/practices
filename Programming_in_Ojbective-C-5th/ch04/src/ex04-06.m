#import <Foundation/Foundation.h>

@interface Complex: NSObject
-(void) setReal: (double)a;
-(void) setImaginary: (double)b;

-(void) print;
-(double) real;
-(double) imaginary;
@end

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
@end

int main(int argc, char** argv)
{
    @autoreleasepool {
        Complex *aCom = [Complex new];

        [aCom setReal:5.2];
        [aCom setImaginary:4.8];

        [aCom print];
        NSLog(@"the real part is %f", [aCom real]);
        NSLog(@"the imaginary part is %f", [aCom imaginary]);
    }

    return 0;
}