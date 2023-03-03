// https://leetcode.com/problems/merge-k-sorted-lists/
// 23. Merge k Sorted Lists
// 

#include <bits/stdc++.h>
using namespace std;

/**
 * Definition for singly-linked list.
**/
struct ListNode {
    int val;
    ListNode *next;
    ListNode() : val(0), next(nullptr) {}
    ListNode(int x) : val(x), next(nullptr) {}
    ListNode(int x, ListNode *next) : val(x), next(next) {}
};

class Solution {
public:
    ListNode* mergeKLists(vector<ListNode*>& lists) {
        multiset<int> mset;

        for (int i = 0; i < lists.size(); i++) {
            ListNode* cur = lists[i];

            while (cur != NULL) {
                mset.insert(cur->val);
                cur = cur->next;
            }
        }

        ListNode* root = new ListNode(0);;
        ListNode* cur = root;
        multiset<int>::iterator itr = mset.begin();

        while (itr!=mset.end()) {
            ListNode* tmp = new ListNode(*itr);
            cur->next = tmp;
            cur = cur->next;
            itr++;
        }
        return root->next;
    }
};

int main ()
{
    cin.tie(0)->sync_with_stdio(0);
    Solution s;

    return 0;
}
