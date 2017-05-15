#include <cstdio>
#include <vector>
#include <algorithm>
#include <functional>
using namespace std;

typedef long long int64;
const int64 INF = int64(1.05e16); 

int64 S, K;
vector<int64> nums;

void init() {
	scanf("%lld%lld", &S, &K);
}

void generate() {
	nums.push_back(0);
	nums.push_back(1);
	int64 acc = 1;
	for (;;) {
		nums.push_back(acc);
		acc += nums.back();
		if (int(nums.size()) > K) {
			acc -= nums[int(nums.size()) - K - 1];
		}
		if (nums.back() > INF) {
			break;
		}
	}
}

void solve() {
	generate();
	reverse(nums.begin(), nums.end());
	vector<int64> ans;
	for (;S;) {
		vector<int64>::iterator itr = lower_bound(nums.begin(), nums.end(), S, greater<int64>());
		S -= *itr;
		ans.push_back(*itr);
	}
	if (int(ans.size()) == 1) {
		ans.push_back(0);
	}
	printf("%d\n", int(ans.size()));
	for (int i = 0; i < int(ans.size()); ++i) {
		printf("%lld%c", ans[i], i==int(ans.size())-1 ? '\n' : ' ');
	}
}

int main() {
	init();
	solve();
	return 0;
}