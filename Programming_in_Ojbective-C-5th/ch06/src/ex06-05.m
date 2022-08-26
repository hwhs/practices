#import <Foundation/Foundation.h>

int main(int argc, char *argv[])
{
    @autoreleasepool {
        int input_num, number, right_digit;

        NSLog(@"Enter your number.");
        scanf("%i", &input_num);

        if (input_num < 0)
            number = -input_num;

        do {
            right_digit = number % 10;
            NSLog(@"%i", right_digit);
            number /= 10;
        } while (number != 0);

        if (input_num < 0)
            NSLog(@"-");
    }

    return 0;
}