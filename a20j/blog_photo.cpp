#include <stdio.h>  
#include <string.h>  
#include <stdlib.h>  
#include <math.h>  
  
long long h, w;  
long long ansh, answ;  
  
void judge(long long x, long long y) {  
    if(x*y < ansh*answ) {  
        return ;  
    }  
    if( x*y > ansh*answ ) {  
        ansh = x;  
        answ = y;  
        return ;  
    }  
    if( x*y == ansh*answ && x > ansh ) {  
        ansh = x;  
        answ = y;  
    }  
}  
  
int main() {  
    while(scanf("%d%d", &h, &w)!=EOF) {  
        long long i, j;  
        for(i = 1; i <= h; i*=2) {  
            long long hh = i;  
            long long ww = (i * 5) / 4;  
            if(ww > w) {  
                ww = w;  
            }  
            if( ((ww * 4 + 4) / 5) <= hh && ((hh * 4 + 4) / 5) <= ww ) {  
                judge(hh, ww);  
            }  
        }  
        for(j = 1; j <= w; j*=2) {  
            long long ww = j;  
            long long hh = (j * 5) / 4;  
            if(hh > h) {  
                hh = h;  
            }  
            if( ((ww * 4 + 4) / 5) <= hh && ((hh * 4 + 4) / 5) <= ww ) {  
                judge(hh, ww);  
            }  
        }  
        printf("%lld %lld\n", ansh, answ);  
    }  
    return 0;  
}  
