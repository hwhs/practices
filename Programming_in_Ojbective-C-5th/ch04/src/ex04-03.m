#import <Foundation/Foundation.h>

int main(int argc, char** argv)
{
    @autoreleasepool {
        char c, d;

        c = 'd';
        d = c;

        NSLog(@"c = %c, d = %c", c, d);
    }

    return 0;
}