#import <Foundation/Foundation.h>

int main(int argc, char** argv)
{
    @autoreleasepool {
        int number1,  number2, result;

        NSLog(@"Type in two numbers:");
        scanf("%i %i", &number1, &number2);

        result = number1%number2;
        NSLog(@"result=%d", result);
        if (result)
            NSLog(@"%d has the remain after dividing by %d", number1, number2);
        else
            NSLog(@"%d can be divisible by %d", number1, number2);
    }

    return 0;
}