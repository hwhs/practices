#import "Fraction.h"
#import "Complex.h"

int main(int argc, char** argv)
{
    @autoreleasepool {
        Fraction *f1 = [Fraction new];
        Fraction *f2 = [Fraction new];
        Fraction *fracResult;
        Complex *c1 = [Complex new];
        Complex *c2 = [Complex new];
        Complex *compResult;

        [f1 setTo: 1 over: 10];
        [f2 setTo: 2 over: 15];

        [c1 setReal: 18.0 andImaginary: 2.5];
        [c2 setReal: -5.0 andImaginary: 3.2];

        [c1 print];
        NSLog(@"        +");
        [c2 print];
        NSLog(@"----------");
        compResult = [c1 add: c2];
        //[compResult reduce];
        [compResult print];
        NSLog(@"\n");

        [f1 print];
        NSLog(@"   +");
        [f2 print];
        NSLog(@"----");
        fracResult = [f1 add: f2];
        [fracResult reduce];
        [fracResult print];
    }

    return 0;
}