#import "Foo.h"

int gGlobalVar = 5;

int main(int argc, char** argv)
{
    @autoreleasepool {
        Foo *myFoo = [Foo new];
        NSLog(@"%i", gGlobalVar);

        [myFoo setGlobalVar: 100];
        NSLog(@"%i", gGlobalVar);
    }

    return 0;
}