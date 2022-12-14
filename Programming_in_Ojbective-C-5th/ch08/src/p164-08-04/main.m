#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, char** argv)
{
    @autoreleasepool {
        Rectangle *myRect = [Rectangle new];
        XYPoint *myPoint = [XYPoint new];

        [myPoint setX: 100 andY: 200];

        [myRect setWidth: 5 andHeight: 8];
        myRect.origin = myPoint;

        NSLog(@"Rectangle w = %i, h = %i", myRect.width, myRect.height);
        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        NSLog(@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);
    }

    return 0;
}