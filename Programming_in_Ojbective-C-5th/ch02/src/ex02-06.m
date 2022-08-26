#import <Foundation/Foundation.h>

int main(int argc, char** argv)
{
    @autoreleasepool {
        int answer, result;

        answer = 100;
        result = answer-10;

        NSLog(@"The result is %i", result+5);
    }

    return 0;
}
