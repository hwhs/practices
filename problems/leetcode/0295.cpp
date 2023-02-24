// https://leetcode.com/problems/find-median-from-data-stream/
// 295. Find Median from Data Stream
// 

#include <bits/stdc++.h>
using namespace std;

class MedianFinder {
    double ret;
    multiset<int> mset;
    multiset<int>::iterator itr;
public:
    MedianFinder() {
    }
    
    void addNum(int num) {
        mset.insert(num);

        int size = mset.size();

        if (size==1) {
            itr = mset.begin();
            ret = *itr;
            return;
        }

        if (size%2 == 1) { //oxoo
            if (num >= *itr)
                itr = next(itr, 1);
            ret = *itr;
        }
        else { //ooxoo
            if (num < *itr)
                itr = prev(itr, 1);
            ret = (*itr)*0.5 + *next(itr, 1)*0.5;
        }
    }
    
    double findMedian() {
        return ret;
    }
};

/**
 * Your MedianFinder object will be instantiated and called as such:
 * MedianFinder* obj = new MedianFinder();
 * obj->addNum(num);
 * double param_2 = obj->findMedian();
 */

int main ()
{
    cin.tie(0)->sync_with_stdio(0);

    return 0;
}
