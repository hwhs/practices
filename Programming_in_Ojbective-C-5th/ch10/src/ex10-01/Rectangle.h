#import <Foundation/Foundation.h>

@interface Rectangle: NSObject

@property int width, height;

//-(Rectangle *) initWidth: (int) w andHeight: (int) h;
-(id) initWidth: (int) w andHeight: (int) h;
-(void) setWidth: (int)w andHeight: (int)h;
-(int) area;
-(int) perimeter;
@end