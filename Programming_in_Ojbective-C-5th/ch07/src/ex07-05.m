#import <Foundation/Foundation.h>

@interface Complex: NSObject
-(void) setReal: (double)a;
-(void) setImaginary: (double)b;

-(void) print;
-(double) real;
-(double) imaginary;
-(Complex *) add: (Complex *)complexNum;
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

-(Complex *) add: (Complex *)complexNum
{
    Complex *newCom = [Complex new];

    newCom.real = real + complexNum.real;
    newCom.imaginary = imaginary + complexNum.imaginary;
    return newCom;
}
@end

int main(int argc, char** argv)
{
    @autoreleasepool {
        Complex *aCom = [Complex new];
        Complex *bCom = [Complex new];

        [aCom setReal:5.2];
        [aCom setImaginary:4.8];

        [aCom print];
        NSLog(@"the real part is %f", [aCom real]);
        NSLog(@"the imaginary part is %f", [aCom imaginary]);

        [bCom setReal:3.6];
        [bCom setImaginary:4.8];
        [bCom print];

        Complex *cCom = [bCom add:aCom];
        [cCom print];
    }

    return 0;
}