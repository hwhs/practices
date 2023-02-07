// https://leetcode.com/problems/minimum-window-substring/
// 76. Minimum Window Substring

#include <bits/stdc++.h>
using namespace std;

class Solution {
public:
    string minWindow(string s, string t) {
        unordered_map<char, int> tmap;
        unordered_map<char, int> smap;
        int ret_start, ret_len;
        int i, tmapSize, len, count;

        for (auto ch : t)
            tmap[ch]++;

        i = 0;
        tmapSize = tmap.size();
        len = INT_MAX;
        ret_start = ret_len = 0;
        count = 0;

        for (int j = 0; j < s.length(); j++) {
            smap[s[j]]++;
            if (smap[s[j]]==tmap[s[j]])
                count++;

            while (count==tmapSize) {
                if (len > j-i+1) {
                    len = j-i+1;
                    ret_start = i;
                    ret_len = len;
                }

                smap[s[i]]--;
                if (smap[s[i]]==tmap[s[i]]-1)
                    count--;
                i++;
            }
        }

        return s.substr(ret_start, ret_len);
    }
};

int main()
{
    cin.tie(0);
    cin.sync_with_stdio(0);

    Solution s;


    return 0;
}