#import "Fraction.h"
#import "FractionComparison.h"

int main(int argc, char** argv)
{
    @autoreleasepool {
        Fraction *a = [Fraction new];
        Fraction *b = [Fraction new];
        Fraction *c = [Fraction new];

        [a setTo: 1 over: 2];
        [b setTo: 2 over: 4];
        [c setTo: 3 over: 4];

        [a print];
        [b print];
        [c print];

        NSLog(@"a is Equal to b? %i", [a isEqualTo:b]);
        NSLog(@"a is Equal to c? %i", [a isEqualTo:c]);

        NSLog(@"a compare b? %i", [a compare:b]);
        NSLog(@"a compare c? %i", [a compare:c]);
        NSLog(@"c compare a? %i", [c compare:a]);
    }

    return 0;
}