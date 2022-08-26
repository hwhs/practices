#import "Fraction.h"

typedef Fraction * FractionObj;

int main(int argc, char** argv)
{
    @autoreleasepool {
        FractionObj a = [Fraction new];
        FractionObj b = [Fraction new];

        a = [[Fraction alloc] initWith: 1 over: 3];
        b = [[Fraction alloc] initWith: 3 over: 7];

        [a print];
        [b print];
    }

    return 0;
}