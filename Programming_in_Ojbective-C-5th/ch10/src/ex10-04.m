#import <Foundation/Foundation.h>

int main(int argc, char** argv)
{
    @autoreleasepool {
        enum Day {
            Sunday = 0, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday
        };
        int days_in_week = 7;
        enum Day aday = Sunday;

        for (int i = 0; i < days_in_week; i++) {
            NSLog(@"%i", aday);
            aday++;
        }
    }

    return 0;
}