#import "Foo.h"

@implementation Foo

-(void) setGlobalVar:(int) val
{
    extern int gGlobalVar;
    gGlobalVar = val;
}
@end