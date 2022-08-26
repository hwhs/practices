#import "Square.h"

int main(int argc, char** argv)
{
    @autoreleasepool {
        Square *mySquare = [Square new];

        // isMemberOf
        if ([mySquare isMemberOfClass: [Square class]] == YES)
            NSLog(@"mySquare is a member of Square class");
        else
            NSLog(@"mySquare isn't a member of Square class");

        if ([mySquare isMemberOfClass: [Rectangle class]] == YES)
            NSLog(@"mySquare is a member of Rectangle class");
        else
            NSLog(@"mySquare isn't a member of Rectangle class");

        if ([mySquare isMemberOfClass: [NSObject class]] == YES)
            NSLog(@"mySquare is a member of NObject class");
        else
            NSLog(@"mySquare isn't a member of NObject class");

        // isKindOf
        if ([mySquare isKindOfClass: [Square class]] == YES)
            NSLog(@"mySquare is a kind of Square class");
        else
            NSLog(@"mySquare isn't a kind of Square class");

        if ([mySquare isKindOfClass: [Rectangle class]] == YES)
            NSLog(@"mySquare is a kind of Rectangle class");
        else
            NSLog(@"mySquare isn't a kind of Rectangle class");

        if ([mySquare isKindOfClass: [NSObject class]] == YES)
            NSLog(@"mySquare is a kind of NObject class");
        else
            NSLog(@"mySquare isn't a kind of NObject class");

        // respondsTo
        if ([mySquare respondsToSelector: @selector (setSide:)] == YES)
            NSLog(@"mySquare responds to setSide: method");

        if ([mySquare respondsToSelector: @selector (setWidth:andHeight:)] == YES)
            NSLog(@"mySquare responds to setWidth:andHeight: method");

        if ([Square respondsToSelector: @selector (alloc)] == YES)
            NSLog(@"Square responds to alloc method");

        //instancesRespondTo
        if ([Rectangle instancesRespondToSelector: @selector (setSide:)] == YES)
            NSLog(@"Instances of Rectangle respond to setSide: method");

        if ([Square instancesRespondToSelector: @selector (setSide:)] == YES)
            NSLog(@"Instances of Square respond to setSide: method");

        if ([Square isSubclassOfClass: [Rectangle class]] == YES)
            NSLog(@"Square is a subclass of rectangle");
    }

    return 0;
}