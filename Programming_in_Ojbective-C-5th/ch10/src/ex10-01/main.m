#import "Rectangle.h"

int main(int argc, char** argv)
{
    @autoreleasepool {
        Rectangle *a = [Rectangle new];

        a = [[Rectangle alloc] initWidth:5 andHeight: 8];

        NSLog(@"Rectangle: w = %i, h = %i", a.width, a.height);
        NSLog(@"Area = %i, Perimeter = %i", [a area], [a perimeter]);
    }

    return 0;
}