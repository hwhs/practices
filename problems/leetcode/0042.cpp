// https://leetcode.com/problems/trapping-rain-water
// 42. Trapping Rain Water

#include <bits/stdc++.h>
using namespace std;

class Solution {
public:
    int trap(vector<int>& height) {
        int n = height.size();
        vector<int> leftMost(n, 0);
        vector<int> rightMost(n, 0);
        int ret = 0;

        for (int i = 1; i < n; i++)
            leftMost[i] = max(leftMost[i-1], height[i-1]);

        for (int i = n-2; i >= 0; i--)
            rightMost[i] = max(rightMost[i+1], height[i+1]);

        for (int i = 0; i < n; i++) {
            int h = min(leftMost[i], rightMost[i])-height[i];
            ret += max(0, h);
        }
        return ret;
    }
};

int main()
{
    cin.tie(0);
    cin.sync_with_stdio(0);

    Solution s;


    return 0;
}
