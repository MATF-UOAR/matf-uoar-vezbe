#include <iostream>

extern "C" int broj_dana_u_mesecu(int mesec);

int main()
{
    int mesec;
    std::cin >> mesec;

    int broj_dana = broj_dana_u_mesecu(mesec);
    if (broj_dana == -1)
    {
        std::cout << "Neispravan mesec\n";
    }
    else
    {
        std::cout << "Broj dana: " << broj_dana << '\n';
    }

    return 0;
}
