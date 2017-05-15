#include<bits/stdc++.h>
using namespace std;
struct node{
    int x,y,z,k;
};
const int maxn = 505;
int n,m,k;
int dx[4]={1,-1,0,0};
int dy[4]={0,0,1,-1};
char mp[maxn][maxn];
int vis[maxn][maxn];
int cnt=1,sum=0;
vector<node>P;
bool cmp(node a,node b)
{
    return a.k>b.k;
}
void dfs(int x,int y)
{
    sum++;
    vis[x][y]=cnt;
    for(int i=0;i<4;i++)
    {
        int xx = x+dx[i];
        int yy = y+dy[i];
        if(xx<1||xx>n)continue;
        if(yy<1||yy>m)continue;
        if(vis[xx][yy])continue;
        if(mp[xx][yy]=='#')continue;
        dfs(xx,yy);
    }
}
void dfs2(int x,int y)
{
    vis[x][y]=1;
    for(int i=0;i<4;i++)
    {
        int xx = x+dx[i];
        int yy = y+dy[i];
        if(xx<1||xx>n)continue;
        if(yy<1||yy>m)continue;
        if(vis[xx][yy])continue;
        if(mp[xx][yy]=='#')continue;
        dfs2(xx,yy);
    }
    if(k>0){
        mp[x][y]='X';
        k--;
    }
}
int main()
{
    scanf("%d%d%d",&n,&m,&k);
    for(int i=1;i<=n;i++)
        scanf("%s",mp[i]+1);
    node tmp;
    for(int i=1;i<=n;i++)
    {
        for(int j=1;j<=m;j++)
        {
            if(mp[i][j]=='.'&&vis[i][j]==0)
            {
                sum=0;
                dfs(i,j);
                tmp.x=i,tmp.y=j,tmp.z=cnt,tmp.k=sum;
                cnt++;
                P.push_back(tmp);
            }
        }
    }
    if(cnt==1)
    {
        for(int i=1;i<=n;i++,cout<<endl)
            for(int j=1;j<=m;j++)
                cout<<mp[i][j];
        return 0;
    }
    sort(P.begin(),P.end(),cmp);
    int ans1 = P[0].z,ans2 = k;
    for(int i=1;i<=n;i++)
    {
        for(int j=1;j<=m;j++)
        {
            if(mp[i][j]=='#')continue;
            if(vis[i][j]!=ans1)
            {
                mp[i][j]='X';
                k--;
            }
        }
    }
    memset(vis,0,sizeof(vis));
    dfs2(P[0].x,P[0].y);
    for(int i=1;i<=n;i++,cout<<endl)
    {
        for(int j=1;j<=m;j++)
        {
            cout<<mp[i][j];
        }
    }
}
