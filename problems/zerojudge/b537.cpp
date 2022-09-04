// https://zerojudge.tw/ShowProblem?problemid=b537

#include <bits/stdc++.h>
using namespace std;

int n;
int a, b;

long long getK(int a, int b)
{
    if (a==b)
        return 1LL;

    if (a > b) {
        return getK(a-b, b)*2;
    }
    else {
        return getK(b, a)+1;
    }
    cout << "error\n";
}

int main()
{
    cin.tie(0)->sync_with_stdio(0);

    while (cin >> a >> b) {
        cout << getK(a, b) << endl;
    }

    return 0;
}