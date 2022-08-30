#import "Fraction.h"

int main(int argc, char** argv)
{
    @autoreleasepool {
        Fraction *f1 = [Fraction new];
        Fraction *f2 = [Fraction new];
        Fraction *fracResult;

        [f1 setTo: 1 over: 10];
        [f2 setTo: 2 over: 15];

        [f1 print];
        NSLog(@"   +");
        [f2 print];
        NSLog(@"----");
        fracResult = [f1 add: f2];
        [fracResult print];
    }

    return 0;
}