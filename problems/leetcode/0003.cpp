// https://leetcode.com/problems/longest-substring-without-repeating-characters/
// 3. Longest Substring Without Repeating Characters

#include <bits/stdc++.h>
using namespace std;

void dump(vector<int> nums)
{
    int size = nums.size();
    for (int i = 0; i < size; i++) {
        cout << nums[i] << ((i+1==size)?"\n":"/");
    }
}

class Solution {
public:
    int lengthOfLongestSubstring(string s) {
        //return method1(s);
        return method2(s);
    }

    int method1(string s) {
        int len = 0;

        for (int i = 0; i < s.length(); i++) {
            unordered_set<char> set;
            int tmp = 1;
            set.insert(s[i]);

            for (int j = i+1; j < s.length(); j++) {
                if (set.find(s[j])==set.end()) {
                    set.insert(s[j]);
                    tmp++;
                }
                else
                    break;
            }
            len = max(len, tmp);
        }
        return len;
    }

    int method2(string s) {
        vector<int> map(256, 0);
        int i = 0;
        int j = 0;
        int result = 0;

        while (j < s.length()) {
            if (map[s[j]]==0) {
                map[s[j]] = 1;
                j++;
            }
            else {
                map[s[i]] = 0;
                i++;
            }
            dump(map);
            result = max(result, j-i);
        }
        return result;
    }
};

int main()
{
    cin.tie(0);
    cin.sync_with_stdio(0);

    Solution sol;

    string s = "abcabcbb";
    cout << sol.lengthOfLongestSubstring(s) << '\n';

    return 0;
}
