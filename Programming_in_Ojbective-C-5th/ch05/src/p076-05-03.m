#import <Foundation/Foundation.h>

int main(int argc, char *argv[])
{
	@autoreleasepool {
		int n, triangularNumber;

		NSLog(@"TABLE OF TRIANGULAR NUMBERS");
		NSLog(@" n SUM from 1 to n");
		NSLog(@"-- ---------------");

		triangularNumber = 0;

		for (n = 1; n <= 10; ++n) {
			triangularNumber += n;
			NSLog(@"%2i      %-2i", n, triangularNumber);
		}

	}
	return 0;
}