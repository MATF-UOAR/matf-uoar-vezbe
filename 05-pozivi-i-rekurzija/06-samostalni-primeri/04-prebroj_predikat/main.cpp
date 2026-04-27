#include <iostream>
#include <vector>

extern "C" int prebroj_predikat(unsigned *a, int n, int (*pred)(unsigned));

int paran(unsigned x)
{
    return x % 2 == 0;
}

int veci_od_99(unsigned x)
{
    return x > 99;
}

int main()
{
    int n;
    std::cin >> n;

    std::vector<unsigned> a(n);
    for (int i = 0; i < n; i++)
    {
        std::cin >> a[i];
    }

    std::cout << "parnih: " << prebroj_predikat(a.data(), n, paran) << std::endl;
    std::cout << "> 99: " << prebroj_predikat(a.data(), n, veci_od_99) << std::endl;

    return 0;
}
