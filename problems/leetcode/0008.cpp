// https://leetcode.com/problems/string-to-integer-atoi/
// 8. String to Integer (atoi)

#include <bits/stdc++.h>
using namespace std;

class Solution {
public:
    int myAtoi(string s) {
        //return method1(s);
        return method2(s);
    }

    int method1(string s) {
        string digits = "";
        int index = 0;
        int len = s.length();
        bool neg=false;
        int ret = 0;
        string intmax="2147483647";

        for (index = 0; index < len; index++) {
            if (s[index] == ' ')
                continue;
            else
                break;
        }

        if (s[index]=='-' || s[index]=='+') {
            neg = (s[index]=='-')?true:false;
            index++;
        }

        for (index; index < len; index++) {
            if (s[index] == '0')
                continue;
            else
                break;
        }

        for (int i = index; i < len; i++) {
            char c = s[i];
            if (isdigit(c))
                digits += c;
            else
                break;
        }

        if (digits.length()>10) {
            ret = (neg)?INT_MIN:INT_MAX;
        }
        else if (digits.length()==10 && digits.compare(intmax)>0) {
            ret = (neg)?INT_MIN:INT_MAX;
        }
        else {
            for (int i = 0; i < digits.length(); i++)
                ret = ret*10+(digits[i]-'0');
            ret = (neg)?-ret:ret;
        }

        return ret;
    }

    int method2(string s) {
        int len = s.length();
        if (s == "" || len == 0)
            return 0;
        
        int index = 0;
        bool sign = true;

        while (index<len && s[index]==' ')
            index++;

        if (index<len && (s[index]=='+' || s[index]=='-')) {
            sign = (s[index]=='+')?true:false;
            index++;
        }

        int ret = 0;
        while (index < len) {
            if (s[index]<'0' || s[index]>'9')
                break;

            int digit = s[index]-'0';
            if (ret>INT_MAX/10 || (ret==INT_MAX/10 && digit>7)) {
                return ((sign)?INT_MAX:INT_MIN);
            }
            ret = ret*10+digit;
            index++;
        }
        return ((sign)?ret:-ret);
    }

    int method3(string s) { //sign from bool to int
        int len = s.length();
        if (s == "" || len == 0)
            return 0;
        
        int index = 0;
        int sign = 1;

        while (index<len && s[index]==' ')
            index++;

        if (index<len && (s[index]=='+' || s[index]=='-')) {
            sign = (s[index]=='-')?-1:1;
            index++;
        }

        int ret = 0;
        while (index < len) {
            if (s[index]<'0' || s[index]>'9')
                break;

            int digit = s[index]-'0';
            if (ret>INT_MAX/10 || (ret==INT_MAX/10 && digit>7)) {
                return ((sign==1)?INT_MAX:INT_MIN);
            }
            ret = ret*10+digit;
            index++;
        }
        return (ret*sign);
    }
};

int main()
{
    cin.tie(0);
    cin.sync_with_stdio(0);

    Solution s;

    return 0;
}