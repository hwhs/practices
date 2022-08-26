#import <Foundation/Foundation.h>

@interface ClassA: NSObject
{
    int x;
}

-(void) initVar;
@end

@implementation ClassA
-(void) initVar
{
    x = 100;
}
@end

@interface ClassB: ClassA
-(void) initVar;
-(void) printVar;
@end

@implementation ClassB
-(void) initVar
{
    x = 200;
}

-(void) printVar
{
    NSLog(@"x = %i", x);
}
@end

int main(int argc, char** argv)
{
    @autoreleasepool {
        ClassB *b = [[ClassB alloc] init];

        [b initVar];

        [b printVar];
    }

    return 0;
}