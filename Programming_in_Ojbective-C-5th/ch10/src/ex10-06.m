#import <Foundation/Foundation.h>

int main(int argc, char** argv)
{
    @autoreleasepool {
        float f = 1.00;
        short int i = 100;
        long int l = 500L;
        double d = 15.00;

        NSLog(@"%g", f+i);
        NSLog(@"%g", l/d);
        NSLog(@"%g", i/l+f);
        NSLog(@"%ld", l*i);
        NSLog(@"%g", f/2);
        NSLog(@"%g", i/(d+f));
        NSLog(@"%g", l/(i*2.0));
        NSLog(@"%g", l+i/(double)l);
    }

    return 0;
}