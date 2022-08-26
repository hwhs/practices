#import <Foundation/Foundation.h>

int main(int argc, char** argv)
{
    @autoreleasepool {
        int f = 27;

        NSLog(@"F(%i) is C(%f)", f, (f-32)/1.8);
    }

    return 0;
}