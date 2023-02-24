// https://leetcode.com/problems/k-closest-points-to-origin/
// 973. K Closest Points to Origin

#include <bits/stdc++.h>
using namespace std;

using LL = long long;
class Solution {
    vector<pair<LL, int>> arr;
public:
    vector<vector<int>> kClosest(vector<vector<int>>& points, int k) {
        for (int i = 0; i < points.size(); i++) {
            LL d = (points[i][0]*points[i][0])+(points[i][1]*points[i][1]);
            arr.push_back({d, i});
        }

        LL kthdist = quickSelect(0, arr.size()-1, k);

        vector<vector<int>> rets;
        for (auto x : arr) {
            if (x.first <= kthdist)
                rets.push_back(points[x.second]);
        }
        return rets;
    }

    LL quickSelect(int a, int b, int k) {
        LL pivot = arr[(a+b)/2].first;
        int i = a, t = a, j = b;

        while (t <= j) {
            if (arr[t].first < pivot) {
                swap(arr[i], arr[t]);
                i++;
                t++;
            }
            else if (arr[t].first > pivot) {
                swap(arr[j], arr[t]);
                j--;
            }
            else {
                t++;
            }
        }

        if (i-a>=k)
            return quickSelect(a, i-1, k);
        else if (j-a+1>=k)
            return pivot;
        else
            return quickSelect(j+1, b, k-(j-a+1));
    }
};

int main()
{
    cin.tie(0);
    cin.sync_with_stdio(0);

    Solution s;

    return 0;
}
