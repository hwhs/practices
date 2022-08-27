#import "Square.h"

int main(int argc, char** argv)
{
    @autoreleasepool {
        id dataValue;
        Square *mySquare = [Square new];

        [mySquare setSide:5];
        NSLog(@"side=%d\n", [mySquare side]);
        NSLog(@"area=%d\n", [mySquare area]);
        NSLog(@"perimeter=%d\n", [mySquare perimeter]);

        dataValue = mySquare;
        NSLog(@"side=%d\n", [dataValue side]);
        NSLog(@"area=%d\n", [dataValue area]);
        NSLog(@"perimeter=%d\n", [dataValue perimeter]);
    }

    return 0;
}