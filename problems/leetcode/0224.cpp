// https://leetcode.com/problems/basic-calculator/
// 224. Basic Calculator

#include <bits/stdc++.h>
using namespace std;

class Solution {
public:
    int calculate(string s) {
        string S = "+";
        for (auto ch : s) {
            if (ch==' ')
                continue;
            S += ch;
            if (ch=='(')
                S+='+';
        }

        stack<int> nums;
        stack<int> signs;
        int sum = 0, sign;
        for (int i = 0; i < S.length(); i++) {
            if (S[i]=='+' || S[i]=='-') {
                sign = (S[i]=='+')?1:-1;
            }
            else if (isdigit(S[i])) {
                int j = i;
                while (j<S.length() && isdigit(S[j]))
                    j++;
                int num = stoi(S.substr(i, j-i));
                i = j-1;
                sum += num*sign;
            }
            else if (S[i]=='(') {
                nums.push(sum);
                signs.push(sign);
                sum = 0;
            }
            else if (S[i]==')') {
                sum = nums.top() + sum*signs.top();
                nums.pop();
                signs.pop();
            }
        }
        return sum;
    }
};

int main()
{
    cin.tie(0);
    cin.sync_with_stdio(0);

    Solution s;

    return 0;
}
