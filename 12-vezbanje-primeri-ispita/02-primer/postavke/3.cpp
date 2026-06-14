#include <iostream>
#include <vector>
using namespace std;

extern "C" int broj_u_opsegu(unsigned long *a, int n,
                             unsigned long l, unsigned long d);

int main()
{
    int n;
    cin >> n;
    vector<unsigned long> a(n);
    for (int i = 0; i < n; i++)
        cin >> a[i];
    unsigned long l, d;
    cin >> l >> d;
    cout << broj_u_opsegu(a.data(), n, l, d) << "\n";
    return 0;
}
