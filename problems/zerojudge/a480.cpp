// https://zerojudge.tw/ShowProblem?problemid=a480

#include <bits/stdc++.h>
using namespace std;

struct point{
    int x;
    int y;
};

point p1, p2;
int n;
vector<point> cities;
vector<point> range12;
vector<int> r2;

void ddp(point p)
{
    cout << "[" << p.x << "/" << p.y << "]";
}

void dump(vector<point> cities)
{
    int size = cities.size();
    for (int i = 0; i < size; i++)
        ddp(cities.at(i));
    cout << endl;
}

void dump2(vector<int> distance)
{
    int size = distance.size();
    for (int i = 0; i < size; i++)
        cout << distance.at(i) << (i+1==size?"\n":"/");
}

int rsquare(point p1, point p2)
{
    int x = p1.x-p2.x;
    int y = p1.y-p2.y;

    return x*x+y*y;
}

bool cmp(point p1, point p2)
{
    return p1.x < p2.x;
}

int main()
{
    cin.tie(0)->sync_with_stdio(0);

    cin >> p1.x >> p1.y;
    cin >> p2.x >> p2.y;
    cin >> n;

    for (int i = 0; i < n; i++) {
        point tmp;
        cin >> tmp.x >> tmp.y ;
        cities.push_back(tmp);
    }

    //ddp(p1);
    //cout << endl;
    //ddp(p2);
    //cout << endl;
    //dump(cities);

    for (int i = 0; i < cities.size(); i++) {
        point tmp;
        tmp.x = rsquare(p1, cities.at(i));
        tmp.y = rsquare(p2, cities.at(i));
        range12.push_back(tmp);
    }
    //dump(range12);
    sort(range12.begin(), range12.end(), cmp);
    //dump(range12);

    int len = range12.size();
    for (int i = range12.size()-2; i >= 0; i--) {
        if (range12.at(i).y < range12.at(i+1).y)
            range12.at(i).y = range12.at(i+1).y;
    }
    //dump(range12);

    int min = range12.at(0).y;
    for (int i = 0; i < range12.size(); i++) {
        int sum = 0;
        if (i != range12.size()-1)
            sum = range12.at(i+1).y;
        sum += range12.at(i).x;
        if (sum < min)
            min = sum;
    }
    cout << min << endl;

    return 0;
}