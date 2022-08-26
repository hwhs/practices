#import <Foundation/Foundation.h>

//---- interface section ----
@interface XYPoint: NSObject
-(void) print;
-(void) setX: (int) X;
-(void) setY: (int) Y;
-(int) getX;
-(int) getY;
@end

//---- implementation section ----
@implementation XYPoint
{
    int x;
    int y;
}

-(void) print
{
    NSLog(@"(%i, %i)", x, y);
}

-(void) setX: (int) X;
{
    x = X;
}

-(void) setY: (int) Y;
{
    y = Y;
}

-(int) getX
{
    return x;
}

-(int) getY
{
    return y;
}
@end

//---- program section ----
int main(int argc, char** argv)
{
    @autoreleasepool {
        XYPoint *myxy = [XYPoint new];

        [myxy setX: 3];
        [myxy setY: 5];

        NSLog(@"the point is (%i, %i)", [myxy getX], [myxy getY]);
    }

    return 0;
}