#import <Foundation/Foundation.h>

int main(int argc, char** argv)
{
    @autoreleasepool {
        int a = 100;
        int b = 2;
        int c = 25;
        int d = 4;
        int result;

        result = a - b;
        NSLog(@"%i-%i=%i", a, b, result);

        result = b * c;
        NSLog(@"%i*%i=%i", b, c, result);

        result = a / c;
        NSLog(@"%i/%i=%i", a, c, result);

        result = a + b * c;
        NSLog(@"%i+%i*%i=%i", a, b, c, result);

        result = a * b + c * d;
        NSLog(@"%i*%i+%i*%i=%i", a, b, c, d, result);
    }

    return 0;
}