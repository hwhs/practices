// https://leetcode.com/problems/lru-cache/
// 146. LRU Cache

#include <bits/stdc++.h>
using namespace std;

#if 0
class LRUCache { //TLE:
public:
    LRUCache(int capacity) {
        size = capacity;
    }
    
    int get(int key) { //O(n)
        int ret = -1;
        list<pair<int,int>>::iterator itr=mylist.begin();

        while (itr!=mylist.end()) {
            if (itr->first==key) {
                ret = itr->second;

                mylist.push_back(*itr);
                mylist.erase(itr);
                return ret;
            }
            itr++;
        }

        return ret;
    }
    
    void put(int key, int value) { //O(n)
        list<pair<int,int>>::iterator itr = mylist.begin();

        while (itr != mylist.end()) {
            if (itr->first==key) {
                mylist.push_back(make_pair(key, value));
                mylist.erase(itr);
                return;
            }
            itr++;
        }

        if (mylist.size()>0 && mylist.size()==size) {
            mylist.pop_front();
        }

        mylist.push_back(make_pair(key, value));
    }

    list<pair<int,int>> mylist;
    int size;
};
#else
class LRUCache {
    list<int> keys;
    unordered_map<int, list<int>::iterator> key2itr;
    unordered_map<int, int> key2value;
    int cap;
public:
    LRUCache(int capacity) {
        cap = capacity;
    }
    
    int get(int key) {
        if (key2value.find(key)==key2value.end())
            return -1;

        auto itr = key2itr[key];
        keys.erase(itr);
        keys.push_back(key);
        key2itr[key] = prev(keys.end());
        return key2value[key];
    }
    
    void put(int key, int value) {
        if (get(key) != -1) {
            key2value[key] = value;
            return;
        }

        if (keys.size()==cap) {
            int key2del = *keys.begin();
            key2value.erase(key2del);
            key2itr.erase(key2del);
            keys.erase(keys.begin());
        }
        key2value[key] = value;
        keys.push_back(key);
        key2itr[key] = prev(keys.end());
    }
};
#endif

/**
 * Your LRUCache object will be instantiated and called as such:
 * LRUCache* obj = new LRUCache(capacity);
 * int param_1 = obj->get(key);
 * obj->put(key,value);
 */

int main()
{
    cin.tie(0);
    cin.sync_with_stdio(0);


    return 0;
}