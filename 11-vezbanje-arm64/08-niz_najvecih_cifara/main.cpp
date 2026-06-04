#include <iostream>
#include <vector>

extern "C" void niz_najvecih_cifara(unsigned *a, unsigned *rez, int n);

int main()
{
    int n;
    std::cin >> n;

    std::vector<unsigned> a(n);
    for (int i = 0; i < n; i++)
    {
        std::cin >> a[i];
    }

    std::vector<unsigned> rez(n);
    niz_najvecih_cifara(a.data(), rez.data(), n);

    for (int i = 0; i < n; i++)
    {
        std::cout << rez[i] << " ";
    }
    std::cout << std::endl;

    return 0;
}
