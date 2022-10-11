// https://zerojudge.tw/ShowProblem?problemid=d550

#include <bits/stdc++.h>
using namespace std;

int n, m;
vector<vector<int>> nums;

void dump2(vector<vector<int>> nums)
{
    int n = nums.size();
    int m = nums.at(0).size();
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++)
            cout << nums.at(i).at(j) << ((j+1==m)?"\n":" ");
    }
}

bool cmp(vector<int> a, vector<int> b)
{
    for (int i = 0; i < m; i++) {
        if (a.at(i) != b.at(i)) {
            return a.at(i) < b.at(i);
        }
    }
    return true;
}

int main()
{
    cin.tie(0);
    cin.sync_with_stdio(0);

    cin >> n >> m;
    for (int i = 0; i < n; i++) {
        vector<int> row;
        for (int j = 0; j < m; j++) {
            int temp;
            cin >> temp;
            row.push_back(temp);
        }
        nums.push_back(row);
    }
    //dump2(nums);
    sort(nums.begin(), nums.end(), cmp);
    dump2(nums);

    return 0;
}