#import <Foundation/Foundation.h>

int main(int argc, char *argv[])
{
	@autoreleasepool {
		int n;

		NSLog(@"  n => n^2");
		NSLog(@"--- -----------");

		for (n = 5; n <= 55; n+=5) {
			NSLog(@"%-2i   %i", n, n*(n+1)/2);
		}

	}
	return 0;
}