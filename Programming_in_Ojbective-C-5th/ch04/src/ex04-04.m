#import <Foundation/Foundation.h>

int main(int argc, char** argv)
{
    @autoreleasepool {
        float x = 2.55;

        NSLog(@"x=%f, 3x^3-5x^2+6=%f", x, 3*x*x*x-5*x*x+6);
    }

    return 0;
}