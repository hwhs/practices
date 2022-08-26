#import <Foundation/Foundation.h>

int main(int argc, char *argv[])
{
	@autoreleasepool {
		int n, k;

		NSLog(@"  n => n!");
		NSLog(@"--- -------");

		for (n = 1; n <= 10; ++n) {
			unsigned int total = 1;

			for (k = 1; k <= n; k++)
				total *= k;

			NSLog(@"%3i   %i", n, total);
		}

	}
	return 0;
}