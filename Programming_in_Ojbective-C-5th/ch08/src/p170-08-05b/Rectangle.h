#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle: NSObject

@property int width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *)pt;

-(void) setWidth: (int)w andHeight: (int)h;
-(int) area;
-(int) perimeter;
@end