/****************************>>>>HEADFILES<<<<****************************/  
#include <queue>  
#include <vector>  
#include <cstdio>  
#include <string>  
#include <cstring>  
#include <iomanip>  
#include <iostream>  
#include <algorithm>  
using namespace std;  
/****************************>>>>>DEFINE<<<<<*****************************/  
//#pragma comment(linker, "/STACK:1024000000,1024000000")  
#define FIN             freopen("input.txt","r",stdin)  
#define rep(i,a,b)      for(int i = a;i <= b;i++)  
#define MP(a,b)         make_pair(a,b)  
#define PB(a)           push_back(a)  
#define fst             first  
#define snd             second  
/****************************>>>>>>DEBUG<<<<<<****************************/  
#define out(x)          cout<<x<<"  ";  
/****************************>>>>SEPARATOR<<<<****************************/  
const int maxn = 2000 + 5;  
int N, M, K, dis[maxn][maxn];;  
bool vis[maxn][maxn];  
void f(int x, int y)  
{  
    for(int i = -1; i <= 1; i++)  
        for(int j = -1; j <= 1; j++)  
            if(x + i > 0 && x + i <= N && y + j > 0 && y + j <= M)  
                dis[x][y] = max(dis[x + i][y + j] - abs(i) - abs(j), dis[x][y]);  
}  
int main()  
{  
     // FIN;  
    while(~scanf("%d %d %d", &N, &M, &K))  
    {  
        memset(vis, false, sizeof(vis));  
        memset(dis, 0, sizeof(dis));  
        int x, y;  
        for(int i = 0; i < K; i++)  
        {  
            scanf("%d %d", &x, &y);  
            if(!vis[x][y])  
            {  
                printf("%d %d\n", x, y);  
                vis[x][y] = true;  
                dis[x][y] = 1;  
                continue;  
            }  
            else  
            {  
                f(x, y);    //这一句不能少，也是一个优化。  
                bool suc = false;  
                for(int &d = dis[x][y];; dis[x][y]++)  
                {  
                    for(int xx = x - d, y1 = 0; xx <= x; xx++, y1++)  
                    {  
                        if(xx <= 0) continue;  
                        if(y - y1 > 0 && !vis[xx][y - y1])  
                        {  
                            suc = vis[xx][y - y1] = true;  
                            dis[xx][y - y1] = 1;  
                            printf("%d %d\n", xx, y - y1);  
                            break;  
                        }  
                        else if(y + y1 <= M && !vis[xx][y + y1])  
                        {  
                            suc = vis[xx][y + y1] = true;  
                            dis[xx][y + y1] = 1;  
                            printf("%d %d\n", xx, y + y1);  
                            break;  
                        }  
                    }  
                    if(suc) break;  
                    for(int xx = x, y1 = d; xx <= d + x; xx++, y1--)  
                    {  
                        if(xx > N) break;  
                        if(y - y1 > 0 && !vis[xx][y - y1])  
                        {  
                            suc = vis[xx][y - y1] = true;  
                            dis[xx][y - y1] = 1;  
                            printf("%d %d\n", xx, y - y1);  
                            break;  
                        }  
                        else if(y + y1 <= M && !vis[xx][y + y1])  
                        {  
                            suc = vis[xx][y + y1] = true;  
                            dis[xx][y + y1] = 1;  
                            printf("%d %d\n", xx, y + y1);  
                            break;  
                        }  
                    }  
                    if(suc) break;  
                }  
            }  
        }  
       // rep(i,1,N) rep(j,1,M) printf("%d%c",dis[i][j],j == M?'\n':' ');  
    }  
    return 0;  
}  