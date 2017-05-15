#include <cstdlib>
#include <cctype>
#include <cstring>
#include <cstdio>
#include <cmath>
#include <algorithm>
#include <vector>
#include <string>
#include <iostream>
#include <sstream>
#include <map>
#include <set>
#include <queue>
#include <stack>
#include <fstream>
#include <numeric>
#include <iomanip>
#include <bitset>
#include <list>
#include <stdexcept>
#include <functional>
#include <utility>
#include <ctime>

using namespace std;

#define PB push_back
#define MP make_pair
#define REP(i,n) for(int i=0;i<(n);++i)
#define FOR(i,l,h) for(int i=(l);i<=(h);++i)
#define DWN(i,h,l) for(int i=(h);i>=(l);--i)
#define CLR(vis) memset(vis,0,sizeof(vis))
#define MST(vis,pos) memset(vis,pos,sizeof(vis))
#define MAX3(a,b,c) max(a,max(b,c))
#define MAX4(a,b,c,d) max(max(a,b),max(c,d))
#define MIN3(a,b,c) min(a,min(b,c))
#define MIN4(a,b,c,d) min(min(a,b),min(c,d))
#define PI acos(-1.0)
#define INF 0x7FFFFFFF
#define LINF 1000000000000000000LL
#define eps 1e-8

typedef long long LL;

const int maxn=3*1e5+5;

const int mod=1000000007;


struct node{
    int u,to,next;
}e[maxn];

int head[maxn],edge;

struct nodeA{
    int nums,j;
}id[maxn];

int q[maxn],dfn[maxn],low[maxn],num[maxn];


int n,m,tsp,qe,cnt;

void init()
{
    MST(head,-1);
    edge=0;
}

void addedge(int u,int v)
{
    e[edge].u=u;
    e[edge].to=v;
    e[edge].next=head[u];
    head[u]=edge++;
}

void tarjan(int u)
{
    int i,v;
    dfn[u]=low[q[qe++]=u]=++tsp;
    for(i=head[u];i>=0;i=e[i].next)
        if(!dfn[v=e[i].to])
        {
            tarjan(v);
            low[u]=min(low[u],low[v]);
        }
        else
        {
            if(id[v].nums<0)
            {
                low[u]=min(low[u],dfn[v]);
            }
        }
    if(low[u]==dfn[u])
    {
        num[id[u].nums=++cnt]=1;
        id[u].j=u;
        while((v=q[--qe])!=u)
            {
                ++num[id[v].nums=cnt];
                id[v].j=v;
            }
    }
}

int cmp(nodeA a,nodeA b)
{
    return a.nums<b.nums;
}


void solve()
{
    int i;
    tsp=qe=cnt=0;
    for(i=0;i<=n;++i)
        id[i].nums=-1,dfn[i]=0;
    for(i=1;i<=n;++i)
        if(!dfn[i])
            tarjan(i);
}


int a[111115];

int main()
{
    init();
    cin>>n;
    CLR(a);
    FOR(i,1,n)
     scanf("%d",&a[i]);
    cin>>m;
    int u,v;
    REP(i,m)
    {
        scanf("%d%d",&u,&v);
        addedge(u,v);
    }
    solve();
    sort(id+1,id+1+n,cmp);
    LL ans=0;
    int pos=1;
    int res=0;
    LL sum=1;
    //cout<<cnt<<endl;
    int flag=0;
    FOR(i,1,cnt)
    {
        int minn=INF;
        FOR(k,pos,n+1)
        {
            if(id[k].nums == i)
                minn=min(minn,a[id[k].j]);
            else
            {
                //cout<<pos<<" "<<k-1<<endl;
                res=0;
                FOR(h,pos,k-1)
                 if(a[id[h].j] == minn)
                    res++;

                pos=k;
                break;
            }
           // if(k==n)
                //flag=1;

        }
       /* if(flag)
        {
            res=0;
            FOR(h,pos,n)
             if(a[id[h].j]==minn)
                    res++;
        }*/
        //cout<<res<<endl;
        ans+=minn;
        sum=sum*res;
        //cout<<res<<endl;
    }
    cout<<ans<<" "<<sum%mod<<endl;
    return 0;
}