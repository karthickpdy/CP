//#pragma comment(linker, "/STACK:16777216") //for c++ Compiler
#include <stdio.h>
#include <iostream>
#include <fstream>
#include <cstring>
#include <cmath>
#include <stack>
#include <string>
#include <map>
#include <set>
#include <list>
#include <queue>
#include <vector>
#include <algorithm>
#define Max (a,b) (((a) > (b)) ? (a) : (b))
#define Min (a,b) (((a) < (b)) ? (a) : (b))
#define Abs (x) (((x) > 0) ? (x) : (-(x)))
#define MOD 1000000007
#define pi acos(-1.0)

using namespace std;

typedef long long           ll      ;
typedef unsigned long long  ull     ;
typedef unsigned int        uint    ;
typedef unsigned char       uchar   ;

template <class T> inline void checkmin (T &a,T b) { if (a > b) a = b; }
template <class T> inline void checkmax (T &a,T b) { if (a < b) a = b; }

const double eps = 1e-7      ;
const int N = 1              ;
const int M = 200000         ;
const ll P = 10000000097ll   ;
const int INF = 0x3f3f3f3f   ;

char a[30][30];
bool cc[30][30][30][30];
int n, m;

bool check(int x1, int y1, int x2, int y2){
    if(x1 >= 1 && x1 <= n){
        if(x2 >= x1 && x2 <= n){
            if(y1 >= 1 && y1 <= m){
                if(y2 >= y1 && y2 <= m){
                    return true;
                }
            }
        }
    }
    return false;
}

int main(){
    int i, j, k, t, numCase = 0;
    while(cin >> n >> m){
        memset(cc, 0, sizeof(cc));
        for(i = 1; i <= n; ++i){
            for(j = 1; j <= m; ++j){
                cin >> a[i][j];
            }
        }
        int ans = 1;
        for(int x1 = 1; x1 <= n; ++x1){
            for(int x2 = x1; x2 <= n; ++x2){
                for(int y1 = 1; y1 <= m; ++y1){
                    for(int y2 = y1; y2 <= m; ++y2){
                        if((x2 == x1 || check(x1, y1, x2 - 1, y2)) && (y2 == y1 || check(x1, y1, x2, y2 - 1)) && a[x2][y2] == '0'){
                            if((x2 == x1 || cc[x1][y1][x2 - 1][y2]) && (y1 == y2 || cc[x1][y1][x2][y2 - 1])){
                                cc[x1][y1][x2][y2] = true;
                                checkmax(ans, 2 * (x2 - x1 + 1 + y2 - y1 + 1));
                            }
                        }

                    }
                }
            }
        }
        cout << ans << endl;
    }

    return 0;
}