#import <Foundation/Foundation.h>

int main(int argc, char** argv)
{
    @autoreleasepool {
        double e_6 = 1e-6;
        double e_7 = 1e-7;
        double e_8 = 1e-8;
        double result = (3.31*e_8 + 2.01*e_7)/(7.16*e_6+2.01*e_8);

        double r1 = (3.31+20.1)/(716.0+2.01);

        NSLog(@"the result is %.20f", result);
        NSLog(@"the result is %.20f", r1);
    }

    return 0;
}