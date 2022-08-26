#import "Complex.h"

int main(int argc, char** argv)
{
    @autoreleasepool {
        Complex *aCom = [Complex new];
        Complex *bCom = [Complex new];

        [aCom setReal:5.2];
        [aCom setImaginary:4.8];

        [aCom print];
        NSLog(@"the real part is %f", [aCom real]);
        NSLog(@"the imaginary part is %f", [aCom imaginary]);

        [bCom setReal:3.6];
        [bCom setImaginary:4.8];
        [bCom print];

        Complex *cCom = [bCom add:aCom];
        [cCom print];
    }

    return 0;
}