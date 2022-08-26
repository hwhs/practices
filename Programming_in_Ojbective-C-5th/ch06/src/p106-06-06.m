#import <Foundation/Foundation.h>

int main(int argc, char** argv)
{
    @autoreleasepool {
        int number, sign;

        NSLog(@"Enter type in a number:");
        scanf("%i", &number);

        if (number < 0)
            sign = -1;
        else if (number == 0)
            sign = 0;
        else
            sign = 1;

        NSLog(@"Sign = %i", sign);
    }

    return 0;
}