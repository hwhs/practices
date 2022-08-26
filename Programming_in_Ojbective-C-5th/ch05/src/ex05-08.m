#import <Foundation/Foundation.h>

int main(int argc, char *argv[])
{
    @autoreleasepool {
        int number, right_digit, sum;

        NSLog(@"Enter your number.");
        scanf("%i", &number);

        sum = 0;

        do {
            right_digit = number % 10;
//            NSLog(@"%i", right_digit);
            number /= 10;
            sum += right_digit;
        } while (number != 0);

        NSLog(@"sum=%i", sum);
    }

    return 0;
}