// https://leetcode.com/problems/remove-duplicates-from-sorted-array/
// 26. Remove Duplicates from Sorted Array

#include <iostream>
#include <vector>
using namespace std;

void dump(vector<int> nums, int size)
{
    for (int i = 0; i < size; i++)
        cout << nums.at(i) << ((i+1==size)?'\n':'/');
}

int removeDuplicates(vector<int>& nums)
{
    int size = nums.size();

    if (size==0)
        return 0;

    int top = 1;
    for (int i = 1; i < size; i++) {
        if (nums.at(top-1) != nums.at(i)) {
            nums.at(top) = nums.at(i);
            top++;
        }
    }

    return top;
}

int main()
{
    cin.tie(0);
    cin.sync_with_stdio(0);

    vector<int> nums;
    for (int i = 0; i < 10; i++) {
        nums.push_back(i);
        nums.push_back(i);
        nums.push_back(i);
    }
    dump(nums, nums.size());

    int top = removeDuplicates(nums);
    dump(nums, top);
    return 0;
}