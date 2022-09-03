// https://zerojudge.tw/ShowProblem?problemid=a299

#include <bits/stdc++.h>
using namespace std;

int n;
int max_len = 100000+1;
vector< vector<int> > mymap;

void dump(vector< vector<int> > mymap, int range)
{
    int a = mymap.size();
    if (range != -1)
        a = range;

    for (int i = 0; i < a; i++) {
        int b = mymap.at(i).size();
        if (range != -1)
            b = range;
        for (int j = 0; j < b; j++)
            cout << mymap.at(i).at(j) << ((j+1==b)? "\n":"");
    }
}

int main()
{
    cin.tie(0)->sync_with_stdio(0);

    int x, y , w, h;
    int qx, qy;

    for (int i = 0; i < max_len; i++) {
        vector<int> tmp = vector<int> (4, 0);
        mymap.push_back(tmp);
    }

    cin >> n;
    for (int i = 1; i <= n; i++)
        cin >> mymap.at(i).at(0) >> mymap.at(i).at(1) >> mymap.at(i).at(2) >> mymap.at(i).at(3);

    cin >> qx >> qy;

    //dump(mymap, 4);
    for (int i = n; i > 0; i--) {
        int a = mymap.at(i).at(0);
        int b = mymap.at(i).at(2);
        int c = mymap.at(i).at(1);
        int d = mymap.at(i).at(3);
        if ((a <= qx) && (a+b >= qx) && (c <= qy) && (c+d >= qy)) {
            cout << i << endl;
            return 0;
        }
    }
    cout << -1 << endl;

    return 0;
}