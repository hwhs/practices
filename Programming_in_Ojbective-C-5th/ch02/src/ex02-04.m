#import <Foundation/Foundation.h>

int main(int argc, char** argv)
{
    @autoreleasepool {
        int value1, value2, sum;

        value1 = 87;
        value2 = 15;
        sum = value1 - value2;
        NSLog(@"The sum of %i and %i is %i", value1, value2, sum);
    }

    return 0;
}
