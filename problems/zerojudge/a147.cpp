// https://zerojudge.tw/ShowProblem?problemid=a147

#include <iostream>
using namespace std;

void output(int n)
{
    for (int i = 1; i < n; i++) {
        if (i%7)
            cout << i << " ";
    }
    cout << endl;
}

int main()
{
    int n;

    while (cin >> n) {
        //cout << n << endl;
        if (n == 0)
            break;

        output(n);
    }

    return 0;
}
