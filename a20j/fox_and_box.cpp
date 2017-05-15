#include <iostream>
#include <vector>
#include <algorithm>
#include <string>
#include <cmath>
#include <set>
#define endl "\n"
#define PB push_back
#define MP make_pair
using namespace std;
typedef pair <int, int> ii;
typedef long long LL;

void solve()
{
    int n;
    cin >> n;
    int a[n];
    for (int i = 0; i < n; i++)
        cin >> a[i];
    sort(a, a+n);
    int currSize = 1;
    for(int i=1;i<n;i++) {
        int leastGroup = (i)/currSize;
        if(a[i] < leastGroup)
            currSize++;
    }
    cout << currSize << endl;
}

int main()
{
    ios_base :: sync_with_stdio (false);
    #ifndef ONLINE_JUDGE
    while(1)
        solve();
    #endif
    solve();
    return 0;
}