// https://leetcode.com/problems/find-all-anagrams-in-a-string/
// 438. Find All Anagrams in a String

#include <bits/stdc++.h>
using namespace std;

class Solution {
public:
    vector<int> findAnagrams(string s, string p) {
        vector<int> sv(256, 0);
        vector<int> pv(256, 0);
        vector<int> results;

        for (auto ch : p)
            pv[ch]++;

        int plen = p.length();
        for (int i = 0; i < s.length(); i++) {
            sv[s[i]]++;
            if (i>=plen) {
                sv[s[i-plen]]--;
            }
            if (sv==pv)
                results.push_back(i-plen+1);
        }
        return results;
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