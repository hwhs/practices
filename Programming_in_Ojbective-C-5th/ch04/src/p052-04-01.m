#import <Foundation/Foundation.h>

int main(int argc, char** argv)
{
    @autoreleasepool {
        int integerVar = 100;
        float floatVar = 331.79;
        double doubleVar = 8.44e+11;
        char charVar = 'W';

        NSLog(@"integerVar=%i(10)", integerVar);
        NSLog(@"integerVar=%o(8)", integerVar);
        NSLog(@"integerVar=%x(16)", integerVar);
        NSLog(@"floatVar=%f",   floatVar);
        NSLog(@"doubleVar=%e", doubleVar);
        NSLog(@"doubleVar=%g", doubleVar);
        NSLog(@"charVar=%c",   charVar);
    }

    return 0;
}