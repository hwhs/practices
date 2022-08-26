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
-(void) printVar;
@end

@implementation ClassB
-(void) printVar
{
    NSLog(@"x = %i", x);
}
@end

@interface ClassB2: ClassA
-(void) printVar;
@end

@implementation ClassB2
-(void) printVar
{
    NSLog(@"x = %i", x);
}
@end

int main(int argc, char** argv)
{
    @autoreleasepool {
        ClassB *b1 = [[ClassB alloc] init];
        ClassB2 *b2 = [[ClassB2 alloc] init];

        [b1 initVar];
        [b1 printVar];

        [b2 initVar];
        [b2 printVar];
    }

    return 0;
}