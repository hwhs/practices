#import "Fraction.h"
#import "FractionMathOps.h"

int main(int argc, char** argv)
{
    @autoreleasepool {
        Fraction *a = [Fraction new];
        Fraction *b = [Fraction new];
        Fraction *result;

        [a setTo: 1 over: 3];
        [b setTo: 2 over: 5];

        [a print];
        NSLog(@"   +");
        [b print];
        NSLog(@"-----");
        result = [a add: b];
        [result print];
        NSLog(@"\n");

        [a print];
        NSLog(@"   -");
        [b print];
        NSLog(@"-----");
        result = [a sub: b];
        [result print];
        NSLog(@"\n");

        [a print];
        NSLog(@"   *");
        [b print];
        NSLog(@"-----");
        result = [a mul: b];
        [result print];
        NSLog(@"\n");

        [a print];
        NSLog(@"   /");
        [b print];
        NSLog(@"-----");
        result = [a div: b];
        [result print];
        NSLog(@"\n");
    }

    return 0;
}