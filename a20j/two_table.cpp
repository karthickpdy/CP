
//STATUS:C++_AC_109MS_196100KB  
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<string>
#include<queue>
#include<stack>
#include<map>
#include<vector>
using namespace std;
const int MAX=10010,INF=200000000;
#define lson l,mid<<1,k<<1
#define rson mid<<1|1,r,k<<1|1

int na,ma,nb,mb;
char a[MAX][MAX],b[MAX][MAX];
int get(int x,int y){
	int i,j,s=0,nx,ny;
	for(i=0;i<na;i++){
		for(j=0;j<ma;j++){
			nx=i+x,ny=j+y;
			if(nx>=0&&nx<nb && ny>=0&&ny<mb
				&& b[nx][ny]=='1' && a[i][j]=='1')
				s++;
		}
	}
	return s;
}

int main()
{
//	freopen("in.txt","r",stdin);
	int i,j,t,max,x,y;
	while(~scanf("%d%d",&na,&ma))
	{
		for(i=0;i<na;i++)
			scanf("%s",a[i]);
		scanf("%d%d",&nb,&mb);
		for(i=0;i<nb;i++)
			scanf("%s",b[i]);

		max=0;
		for(i=-na+1;i<nb;i++){
			for(j=-ma+1;j<mb;j++){
				t=get(i,j);
				if(t>max){
					max=t;
					x=i,y=j;
				}
			}
		}

		printf("%d %d\n",x,y);
	}
	return 0;
}