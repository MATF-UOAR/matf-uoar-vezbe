#include <iostream>
using namespace std;

extern "C" unsigned long tezina(unsigned long x);

int main()
{
    unsigned long x;
    cin >> x;
    cout << tezina(x) << "\n";
    return 0;
}
