// https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/
// 236. Lowest Common Ancestor of a Binary Tree

#include <bits/stdc++.h>
using namespace std;

struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};

#if 0
class Solution {
public:
    TreeNode* lowestCommonAncestor(TreeNode* root, TreeNode* p, TreeNode* q) {
        vector<TreeNode*> ppath;
        vector<TreeNode*> qpath;

        dfs(root, p, ppath);
        dfs(root, q, qpath);

        TreeNode* result;
        int i = ppath.size()-1;
        int j = qpath.size()-1;
        while (i>=0 && j>=0 && ppath[i]==qpath[j]) {
            result = ppath[i];
            i--;
            j--;
        }
        return result;
    }

    bool dfs(TreeNode* root, TreeNode* n, vector<TreeNode* >& npath) {
        if (root==NULL)
            return false;
        if (root==n || dfs(root->left, n, npath) || dfs(root->right, n, npath)) {
            npath.push_back(root);
            return true;
        }
        return false;
    }
};
#else
class Solution {
    TreeNode* ret = NULL;
public:
    TreeNode* lowestCommonAncestor(TreeNode* root, TreeNode* p, TreeNode* q) {
        dfs(root, p, q);
        return ret;
    }

    int dfs(TreeNode* root, TreeNode* p, TreeNode* q) {
        if (root==NULL)
            return 0;

        int left = dfs(root->left, p, q);
        int right = dfs(root->right, p, q);
        int self = (p==root || q==root);
        int count = left+right+self;
        if (count==2 && ret==NULL)
            ret = root;
        return count;
    }
};
#endif

int main()
{
    cin.tie(0);
    cin.sync_with_stdio(0);

    Solution s;

    return 0;
}