#include <iostream>
#include <vector>
using namespace std;

extern "C" void minmax(long *a, int n, long *pmin, long *pmax)
{
    *pmin = *pmax = a[0];
    for (int i = 1; i < n; i++)
    {
        if (a[i] < *pmin)
            *pmin = a[i];
        if (a[i] > *pmax)
            *pmax = a[i];
    }
}

extern "C" int broj_unutrasnjih(long *a, int n);

int main()
{
    int n;
    cin >> n;
    vector<long> a(n);
    for (int i = 0; i < n; i++)
        cin >> a[i];
    cout << broj_unutrasnjih(a.data(), n) << "\n";
    return 0;
}
