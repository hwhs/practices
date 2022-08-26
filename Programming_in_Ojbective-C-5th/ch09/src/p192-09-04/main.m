#import "Fraction.h"
#import "Complex.h"

int main(int argc, char** argv)
{
    @autoreleasepool {
        Fraction *f = [Fraction new];
        [f noSuchMethod];
        NSLog(@"Execution continues!");
    }

    return 0;
}