#import <Foundation/Foundation.h>

@interface ClassA: NSObject
{
    int x;
}

-(void) initVar;
-(void) printVar;
@end

@implementation ClassA
-(void) initVar
{
    x = 100;
}

-(void) printVar
{
    NSLog(@"x = %i", x);
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
        ClassA *a = [[ClassA alloc] init];
        ClassB *b = [[ClassB alloc] init];

        [a initVar];
        [a printVar];

        [b initVar];
        [b printVar];
    }

    return 0;
}