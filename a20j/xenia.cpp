#include <bits/stdc++.h>
using namespace std;
int m;
vector<int> ans;
string s;
int dp[21][11][1001];
bool rec(int sum, int cnt, vector<int> v, int lasti) {
    //   if(dp[sum+10][lasti][cnt]!=-1)
    //     return dp[sum][lasti][cnt];
    if (cnt == m) {
        ans = v;
        return 1;
    }
    bool x = 0;
    for (int i = 0; i < 10; i++) {
        if (i == lasti)
            continue;
        if (sum > 0) {
            if (s[i] == '1' && sum - i - 1 < 0)
                v.push_back(i + 1), x = rec(sum - i - 1, cnt + 1, v, i), v.pop_back();
        } else {
            if (s[i] == '1' && sum + i + 1 > 0)
                v.push_back(i + 1), x = rec(sum + i + 1, cnt + 1, v, i), v.pop_back();

        }
        if (x)
            return 1;
        //    dp[sum+10][lasti][cnt]=x;
        //if(i==9)
        //dp[sum+10][lasti][cnt]=x;
    }
    return x;
}
int main() {
    cin >> s;
    memset(dp, -1, sizeof dp);
    scanf("%d", &m);
    for (int i = 0; i < 10; i++) {
        vector<int> zz;
        zz.push_back(i + 1);
        if (s[i] == '1')
            if (rec(i + 1, 1, zz, i)) {
                puts("YES");
                for (int i = 0; i < ans.size(); i++)
                    printf("%d ", ans[i]);
                return 0;
            }
    }
    puts("NO");
}