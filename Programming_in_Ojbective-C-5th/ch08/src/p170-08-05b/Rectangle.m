#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint *origin;
}

@synthesize width, height;

-(XYPoint *) origin
{
    return origin;
}

-(void) setOrigin: (XYPoint *)pt
{
    if (!origin)
        origin = [XYPoint new];

    origin.x = pt.x;
    origin.y = pt.y;
}

-(void) setWidth: (int)w andHeight: (int)h
{
    width = w;
    height = h;
}

-(int) area
{
    return width*height;
}

-(int) perimeter
{
    return (width+height)*2;
}
@end