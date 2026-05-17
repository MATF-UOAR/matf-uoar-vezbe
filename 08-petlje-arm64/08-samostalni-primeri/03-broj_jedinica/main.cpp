#include <iostream>

extern "C" unsigned broj_jedinica(unsigned n);

int main()
{
    unsigned n;
    std::cin >> n;
    std::cout << "Broj jedinica: " << broj_jedinica(n) << std::endl;
    return 0;
}
