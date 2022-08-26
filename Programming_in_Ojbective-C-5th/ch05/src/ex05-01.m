#import <Foundation/Foundation.h>

int main(int argc, char *argv[])
{
	@autoreleasepool {
		int n;

		NSLog(@"  n => n^2");
		NSLog(@"--- -------");

		for (n = 1; n <= 10; ++n) {
			NSLog(@"%3i   %3i", n, n*n);
		}

	}
	return 0;
}