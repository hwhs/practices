#import <Foundation/Foundation.h>

int main(int argc, char** argv)
{
    @autoreleasepool {
        int a = 25;
        int b = 2;
        float c =25.0;
        float d = 2.0;

        NSLog(@"a=%i, b=%i, c=%f, d=%f", a, b, c, d);
        NSLog(@"6 + a / 5 * b = %i", 6+a/5*b);
        NSLog(@"a / b * b = %i", a / b * b);
        NSLog(@"c / d * d = %f", c / d * d);
        NSLog(@"-a = %i", -a);
    }

    return 0;
}