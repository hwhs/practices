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

-(void) setWidth: (double)w andHeight: (double)h
{
    width = w;
    height = h;
}

-(double) area
{
    return width*height;
}

-(double) perimeter
{
    return (width+height)*2;
}
@end