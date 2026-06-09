#include <iostream>
#include <vector>
using namespace std;

extern "C" int vise_parnih_cifara(long *a, int n);

int main()
{
    int n;
    cin >> n;
    vector<long> a(n);
    for (int i = 0; i < n; i++)
        cin >> a[i];
    cout << vise_parnih_cifara(a.data(), n) << "\n";
    return 0;
}
