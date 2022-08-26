#import <Foundation/Foundation.h>

int main(int argc, char** argv)
{
    @autoreleasepool {
        int number, re_number;

        NSLog(@"Type in number:");
        scanf("%i", &number);

        re_number = 0;
        while (number) {
            re_number *= 10;
            re_number += number%10;
            number /= 10;
        }
        NSLog(@"re_number=%d", re_number);

        while (re_number != 0) {
            int n = re_number%10;
            re_number /= 10;

            switch (n) {
                case 1:
                    NSLog(@"one");
                    break;
                case 2:
                    NSLog(@"two");
                    break;
                case 3:
                    NSLog(@"three");
                    break;
                case 4:
                    NSLog(@"four");
                    break;
                case 5:
                    NSLog(@"five");
                    break;
                case 6:
                    NSLog(@"six");
                    break;
                case 7:
                    NSLog(@"seven");
                    break;
                case 8:
                    NSLog(@"eight");
                    break;
                case 9:
                    NSLog(@"nine");
                    break;
                case 0:
                    NSLog(@"zero");
                    break;
                default:
                    NSLog(@"error number");
                    break;
            }
        }
    }

    return 0;
}