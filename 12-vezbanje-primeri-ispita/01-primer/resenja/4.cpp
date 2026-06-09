#include <iostream>
#include <vector>
using namespace std;

extern "C" int saren(long x)
{
    if (x < 10)
        return 1;
    int prev = (int)(x % 10) & 1;
    x /= 10;
    while (x > 0)
    {
        int curr = (int)(x % 10) & 1;
        if (curr == prev)
            return 0;
        prev = curr;
        x /= 10;
    }
    return 1;
}

extern "C" long saberi_sarene(long *a, int n);

int main()
{
    int n;
    cin >> n;
    vector<long> a(n);
    for (int i = 0; i < n; i++)
        cin >> a[i];
    cout << saberi_sarene(a.data(), n) << "\n";
    return 0;
}
