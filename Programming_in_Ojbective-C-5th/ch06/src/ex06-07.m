#import <Foundation/Foundation.h>

int main(int argc, char** argv)
{
    @autoreleasepool {
        int p, d, isPrime;

        for (p = 2; p <= 50; p++) {
            if (p%2 == 0)
                continue;

            isPrime = 1;

            for (d = 2; d < p; d++) {
                if (p%d == 0) {
                    isPrime = 0;
                    break;
                }
            }

            if (isPrime != 0)
                NSLog(@"%i", p);
        }
    }

    return 0;
}