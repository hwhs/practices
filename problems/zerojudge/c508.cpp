// https://zerojudge.tw/ShowProblem?problemid=c508

#include <bits/stdc++.h>
using namespace std;

int n;
vector<int> nums;

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

    cin >> n;
    for (int i = 0; i < n; i++) {
        int a;
        cin >> a;
        nums.push_back(a);
    }
    sort(nums.begin(), nums.end());
    dump(nums);

    int index = nums.size()-1;
    for (int i = nums.size()-1; i >= 0; i--) {
        if (!(i!=index && nums.at(i)==nums.at(index))) {
            index = i;
            if (i != nums.size()-1)
                cout << " ";
            cout << nums.at(i);
        }
    }
    cout << "\n";

    return 0;
}