// https://zerojudge.tw/ShowProblem?problemid=b557

#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

vector<int> nums;

void dump()
{
    int size = nums.size();
    for (int i = 0; i < size; i++)
        printf("%d%c", nums.at(i), ((i+1==size)?'\n':'/'));
}

bool check(int ai, int aj, int ak)
{
    if (ai*ai==aj*aj+ak*ak)
        return true;
    if (aj*aj==ai*ai+ak*ak)
        return true;
    if (ak*ak==ai*ai+aj*aj)
        return true;

    return false;
}

int checkTriangles()
{
    int total = 0;
    for (int i = 0; i < nums.size(); i++) {
        for (int j = 0; j < i; j++) {
            for (int k = 0; k < j; k++) {
                int ai = nums.at(i);
                int aj = nums.at(j);
                int ak = nums.at(k);
                //printf("[%d]%d/[%d]%d/[%d]%d", i, ai, j, aj, k, ak);
                if (check(ai, aj, ak))
                    total++;
            }
        }
    }
    return total;
}

int main()
{
    int t;
    scanf("%d", &t);

    while (t--) {
        int n;
        scanf("%d", &n);
        nums.clear();

        while (n--) {
            int num;
            scanf("%d", &num);
            nums.push_back(num);
        }
        //sort(nums.begin(), nums.end());
        //dump();

        int result = checkTriangles();
        printf("%d\n", result);
    }

    return 0;
}