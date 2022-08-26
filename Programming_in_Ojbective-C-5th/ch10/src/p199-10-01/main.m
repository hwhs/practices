#import "Fraction.h"

int main(int argc, char** argv)
{
    @autoreleasepool {
        Fraction *a = [Fraction new];
        Fraction *b = [Fraction new];

        a = [[Fraction alloc] initWith: 1 over: 3];
        b = [[Fraction alloc] initWith: 3 over: 7];

        [a print];
        [b print];
    }

    return 0;
}