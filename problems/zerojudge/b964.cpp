// https://zerojudge.tw/ShowProblem?problemid=b964

#include <bits/stdc++.h>
using namespace std;

int n;
vector<int> scores;

void dump(vector<int> nums)
{
    int size = nums.size();
    for (int i = 0; i < size; i++)
        cout << nums.at(i) << ((i+1==size)?"\n":" ");
}

int main()
{
    cin.tie(0);
    cin.sync_with_stdio(0);

    int n1, n2;
    n1 = 100+1;
    n2 = 0-1;

    cin >> n;
    for (int i = 0; i < n; i++) {
        int a;
        cin >> a;
        scores.push_back(a);

        if (a >= 60 && a < n1)
            n1 = a;
        if (a < 60 && a > n2)
            n2 = a;
    }
    sort(scores.begin(), scores.end());
    dump(scores);

    if (n2 < 0)
        cout << "best case\n";
    else
        cout << n2 << "\n";

    if (n1 > 100)
        cout << "worst case\n";
    else
        cout << n1 << "\n";


    return 0;
}