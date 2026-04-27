#include <iostream>
#include <vector>

extern "C" int nadji_prvi(unsigned *a, int n, int (*pred)(unsigned));

int paran(unsigned x)
{
    return x % 2 == 0;
}

int veci_od_99(unsigned x)
{
    return x > 99;
}

void ispisi_rezultat(const char *opis, int indeks)
{
    if (indeks == -1)
    {
        std::cout << opis << ": nema pogodaka" << std::endl;
    }
    else
    {
        std::cout << opis << ": indeks " << indeks << std::endl;
    }
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

    ispisi_rezultat("prvi paran", nadji_prvi(a.data(), n, paran));
    ispisi_rezultat("prvi > 99", nadji_prvi(a.data(), n, veci_od_99));

    return 0;
}
