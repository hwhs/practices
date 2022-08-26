#import "Fraction.h"
#import "Complex.h"

int main(int argc, char** argv)
{
    @autoreleasepool {
        id dataValue;
        Fraction *f1 = [Fraction new];
        Complex *c1 = [Complex new];

        [f1 setTo: 2 over: 5];
        [c1 setReal: 10.0 andImaginary: 2.5];

        dataValue = f1;
        [dataValue print];

        dataValue = c1;
        [dataValue print];

        NSLog(@"%i", ([f1 class] == [c1 class]));
        NSLog(@"%i", ([f1 isMemberOfClass: [Fraction class]]));
    }

    return 0;
}