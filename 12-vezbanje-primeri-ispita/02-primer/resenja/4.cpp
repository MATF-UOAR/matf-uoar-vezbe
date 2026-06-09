#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

extern "C" void statistika(unsigned long *a, int n,
                           unsigned long *pmean, unsigned long *pmedian)
{
    unsigned long sum = 0;
    for (int i = 0; i < n; i++)
        sum += a[i];
    *pmean = sum / (unsigned long)n;

    vector<unsigned long> sorted_a(a, a + n);
    sort(sorted_a.begin(), sorted_a.end());
    *pmedian = sorted_a[n / 2];
}

extern "C" int broj_tipicnih(unsigned long *a, int n);

int main()
{
    int n;
    cin >> n;
    vector<unsigned long> a(n);
    for (int i = 0; i < n; i++)
        cin >> a[i];
    cout << broj_tipicnih(a.data(), n) << "\n";
    return 0;
}
