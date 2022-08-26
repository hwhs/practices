#import <Foundation/Foundation.h>

int main(int argc, char** argv)
{
    @autoreleasepool {
        int p, d;
        bool isPrime;

        for (p = 2; p <= 50; p++) {
            isPrime = YES;

            for (d = 2; d < p; d++) {
                if (p%d == 0)
                    isPrime = NO;
            }

            if (isPrime == YES)
                NSLog(@"%i", p);
        }
    }

    return 0;
}