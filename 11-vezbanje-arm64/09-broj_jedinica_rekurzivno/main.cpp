#include <iostream>

extern "C" unsigned broj_jedinica_rekurzivno(unsigned n);

int main()
{
    unsigned n;
    std::cin >> n;

    std::cout << broj_jedinica_rekurzivno(n) << std::endl;

    return 0;
}
