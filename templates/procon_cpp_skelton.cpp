// https://qiita.com/DaikiSuyama/items/9dba963ba74396b9b7fd
// https://luling.hatenablog.com/entry/2018/12/01/212805
// https://zenn.dev/antyuntyun/articles/atcoder-cpp-template
//
#include <bits/stdc++.h>
using namespace std;
typedef long long ll;
typedef unsigned long long ull;

// rep macro
#define reps(i, a, n) for (ll i = (a); i < (ll)(n); ++i)
#define rreps(i, a, n) for (ll i = (a); i > (ll)(n); --i)
#define rep(i, n) reps(i, 0, n)
#define rrep(i, n) reps(i, 1, n + 1)
#define repd(i,n) for(ll i=n-1;i>=0;i--)
#define rrepd(i,n) for(ll i=n;i>=1;i--)

#define optimize_cin() cin.tie(0); ios::sync_with_stdio(false)

#define pb push_back
#define mp make_pair
#define all(obj) (obj).begin(), (obj).end()
#define YESNO(bool) if(bool){cout<<"YES"<<endl;}else{cout<<"NO"<<endl;}
#define yesno(bool) if(bool){cout<<"yes"<<endl;}else{cout<<"no"<<endl;}
#define YesNo(bool) if(bool){cout<<"Yes"<<endl;}else{cout<<"No"<<endl;}

//定数
#define INF32 2147483647           // 2.147483647 x 10^{9}:32bit整数のinf
#define INF64 9223372036854775807  // 9.22337203685477580 x 10^{18}:64bit整数のinf
#define MOD 1000000007             //問題による
#define PI 3.14159265359           // 円周率

//略記
#define F first
#define S second

//出力(空白区切りで昇順に)
#define dump(x)                                                 \
  for (auto i = x.begin(); i != --x.end(); i++) cout << *i << " "; \
  cout << *--x.end() << endl;
#define echo(x) cout << (x) << endl;

#define dumpLine(x) {                               \
  for (auto i = x.begin(); i != x.end(); ++i) {     \
    if (i != x.begin())                             \
      cout << " " << *i;                            \
    else                                            \
      cout << *i;                                   \
  }                                                 \
  cout << endl;                                     \
}

#define dumpMatrix(ms, row, col) \
for (auto i = 0; i < row; i++) { \
  for (auto j = 0; j < col; j++) { \
    if (j != 0) cout << " "; \
    cout << ms[i][j]; \
  } \
  cout << endl; \
}

// aをbで割る時の繰上げ,繰り下げ
ll _ceil(ll a, ll b) { return (a + (b - 1)) / b; }
ll _floor(ll a, ll b) { return a / b; }

// 大きい方、小さい方を残す
template<class T>bool chmax(T &a, const T &b) { if (a<b) { a=b; return 1; } return 0; }
template<class T>bool chmin(T &a, const T &b) { if (b<a) { a=b; return 1; } return 0; }

signed main() {
  //小数の桁数の出力指定
  // cout<<fixed<<setprecision(10);
  //入力の高速化用のコード
  // ios::sync_with_stdio(false);
  // cin.tie(nullptr);
}
