#import <Foundation/Foundation.h>

int main(int argc, char *argv[])
{
    @autoreleasepool {
        int n, triangularNumber;

        triangularNumber = 0;
        n = 1;

        while (n <= 200) {
        	triangularNumber += n;
        	n++;
        }

        NSLog(@"The eighth triangular number is %i", triangularNumber);
    }
    return 0;
}
