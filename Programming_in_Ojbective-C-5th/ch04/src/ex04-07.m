#import <Foundation/Foundation.h>

@interface Rectangle: NSObject
-(void) setWidth: (int)w;
-(void) setHeight: (int)h;

-(int) width;
-(int) height;

-(int) area;
-(int) perimeter;
@end

@implementation Rectangle
{
    int _w;
    int _h;
}

-(void) setWidth: (int)w
{
    _w = w;
}

-(void) setHeight: (int)h
{
    _h = h;
}

-(int) width
{
    return _w;
}

-(int) height
{
    return _h;
}

-(int) area
{
    return _w*_h;
}

-(int) perimeter
{
    return 2*(_w+_h);
}

@end

int main(int argc, char** argv)
{
    @autoreleasepool {
        Rectangle *aRectangle = [Rectangle new];

        [aRectangle setWidth:9];
        [aRectangle setHeight:6];

        NSLog(@"w: %i, h: %i", [aRectangle width], [aRectangle height]);
        NSLog(@"area: %i", [aRectangle area]);
        NSLog(@"perimeter: %i", [aRectangle perimeter]);
    }

    return 0;
}