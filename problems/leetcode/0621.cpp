// https://leetcode.com/problems/task-scheduler/
// 621. Task Scheduler
// 

#include <bits/stdc++.h>
using namespace std;

class Solution {
public:
    int leastInterval(vector<char>& tasks, int n) {
        n++;
        unordered_map<char, int> map;
        for (auto x : tasks)
            map[x]++;

        priority_queue<int> pq;
        for (auto x : map)
            pq.push(x.second);

        int ret = 0;
        while (!pq.empty()) {
            int k = min(n, (int)pq.size());
            vector<int> temp;

            for (int i = 0; i < k; i++) {
                int f = pq.top();
                pq.pop();
                f--;
                if (f != 0)
                    temp.push_back(f);
            }

            if (temp.size() > 0)
                ret += n;
            else
                ret += k;

            for (auto x : temp)
                pq.push(x);
        }
        return ret;
    }
};

int main ()
{
    cin.tie(0)->sync_with_stdio(0);
    Solution s;

    return 0;
}
