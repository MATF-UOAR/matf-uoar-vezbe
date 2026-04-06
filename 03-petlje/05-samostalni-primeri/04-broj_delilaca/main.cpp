#include <iostream>

extern "C" unsigned broj_delilaca(unsigned n);

int main()
{
    unsigned n;
    std::cin >> n;
    std::cout << "Broj delilaca: " << broj_delilaca(n) << std::endl;
    return 0;
}
