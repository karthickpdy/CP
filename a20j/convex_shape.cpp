#include <iostream>
#include <cstdio>
#include <cstring>

using namespace std;

int m, n;
char map[51][51];

bool Judge(int i0, int j0)
{
    for(int i1 = 0; i1 < n; i1++)
        for(int j1 = 0; j1 < m; j1++)
        {
            if(map[i1][j1] == 'B' && (i1 != i0 || j1 != j0))
            {
                //以下判断（i0, j0）能否至多经一次转弯到达（i1, j1）
                if(i1 == i0)  //不需转弯
                {
                    int d = j1 > j0 ? 1 : -1;
                    for(int k = j0 + d; ; k += d)
                    {
                        if(map[i0][k] == 'W') return false;
                        if(k == j1) break;
                    }
                }
                else if(j1 == j0)  //不需转弯
                {
                    int d = i1 > i0 ? 1 : -1;
                    for(int k = i0 + d; ; k += d)
                    {
                        if(map[k][j0] == 'W') return false;
                        if(k == i1) break;
                    }
                }
                else  //两个可能的转弯点（i0, j1）和（i1, j0）
                {
                    bool tag = true;
                    int k, d;
                    //由(i0, j0)经(i1, j0)到(i1,j1)
                    d = i1 > i0 ? 1 : -1;
                    for(k = i0 + d; ; k += d)
                    {
                        if(map[k][j0] == 'W')
                        {
                            tag = false;
                            break;
                        }
                        if(k == i1) break;
                    }
                    if(tag)
                    {
                        d = j1 > j0 ? 1 : -1;
                        for(k = j0 + d; ; k += d)
                        {
                            if(map[i1][k] == 'W')
                            {
                                tag = false;
                                break;
                            }
                            if(k == j1) break;
                        }
                    }
                    if(!tag)
                    {
                        tag = true;
                        //由(i0, j0)经(i0, j1)到(i1,j1)
                        d = j1 > j0 ? 1 : -1;
                        for(k = j0 + d; ; k += d)
                        {
                            if(map[i0][k] == 'W')
                            {
                                tag = false;
                                break;
                            }
                            if(k == j1) break;
                        }
                        if(tag)
                        {
                            d = i1 > i0 ? 1 : -1;
                            for(k = i0 + d; ; k += d)
                            {
                                if(map[k][j1] == 'W')
                                {
                                    tag = false;
                                    break;
                                }
                                if(k == i1) break;
                            }
                        }
                    }
                    if(!tag) return false;
                }
            }
        }
    return true;
}

int main()
{
    bool ok;
    while(scanf("%d %d", &n, &m) != EOF)
    {
        ok = true;
        for(int i = 0; i < n; i++)
            scanf("%s", map[i]);
        for(int i = 0; i < n && ok; i++)
        {
            for(int j = 0; j < m && ok; j++)
            {
                if(map[i][j] == 'B')
                    ok = Judge(i, j);
            }
        }
        if(ok) puts("YES");
        else puts("NO");
    }
    return 0;
}