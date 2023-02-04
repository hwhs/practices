// https://leetcode.com/problems/longest-palindromic-substring/
// 5. Longest Palindromic Substring

#include <bits/stdc++.h>
using namespace std;

class Solution {
public:
    string longestPalindrome(string s) {
        //return method1(s);
        return method2(s);
    }

    string method1(string s) { //BF O(N^2)
        int size = s.size(), max, start;

        if (size < 2)
            return s;

        max = 0, start = 0;
        for (int i = 0; i < size-1; i++) {
            search(s, i, i, start, max);
            search(s, i, i+1, start, max);
        }
        return s.substr(start, max);
    }
    void search(string s, int left, int right, int &start, int &max) {
        while (left >= 0 && right < s.size() && s.at(left)==s.at(right)) {
            left--;
            right++;
        }

        //left is in (left-1) and right is in (right+1)
        if (right-left-1 > max) {
            start = left+1;
            max = right-left-1;
        }
    }

    string method2(string s) { //O(N)
        string t = "#";
        for (auto ch : s) {
            t += ch;
            t += '#';
        }

        int n = t.length();
        vector<int> dp(n);
        int maxC = -1;
        int maxR = -1;

        for (int i = 0; i < n; i++) {
            int r = 0;
            if (i <= maxR) {
                int j = 2*maxC-i; //maxC-(i-maxC);
                r = min(dp[j], maxR-i);
                while (i-r>=0 && i+r<n && t[i-r]==t[i+r])
                    r++;
            }
            else {
                r = 0;
                while (i-r>=0 && i+r<n && t[i-r]==t[i+r])
                    r++;
            }

            dp[i] = r-1;
            if (i+dp[i] > maxR) {
                maxR = i+dp[i];
                maxC = i;
            }
        }

        int maxLen = -1;
        int center;
        for (int i = 0; i < n; i++) {
            if (dp[i]>maxLen) {
                maxLen = dp[i];
                center = i;
            }
        }
        return s.substr(center/2-maxLen/2, maxLen);
    }
};

int main()
{
    cin.tie(0);
    cin.sync_with_stdio(0);

    Solution s;

#if 1
    vector<int> nums;
    int target;

    nums = vector<int>{3,3};
    target = 6;

    vector<int> indexes = s.twoSum(nums, target);
    dump(indexes);
#endif

    return 0;
}