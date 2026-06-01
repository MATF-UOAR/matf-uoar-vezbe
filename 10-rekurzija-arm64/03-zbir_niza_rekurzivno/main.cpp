#include <iostream>
#include <vector>

extern "C" int zbir_niza_rekurzivno(int *a, int n);

int main()
{
    int n;
    std::cin >> n;

    std::vector<int> a(n);
    for (int i = 0; i < n; i++)
    {
        std::cin >> a[i];
    }

    std::cout << zbir_niza_rekurzivno(a.data(), n) << std::endl;
    return 0;
}
