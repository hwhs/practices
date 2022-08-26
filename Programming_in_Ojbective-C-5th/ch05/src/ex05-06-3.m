#import <Foundation/Foundation.h>

int main(int argc, char *argv[])
{
    @autoreleasepool {
        int n, number, triangularNumber;

        NSLog(@"What triangular number do you want?");
        scanf("%i", &number);

        triangularNumber = 0;
        n = 1;

        while (n <= number) {
        	triangularNumber += n;
            n++;
        }

        NSLog(@"Triangular number %i is %i", number, triangularNumber);

    }
    return 0;
}