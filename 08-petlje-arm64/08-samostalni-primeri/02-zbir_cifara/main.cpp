#include <iostream>

extern "C" unsigned zbir_cifara(unsigned n);

int main()
{
    unsigned n;
    std::cin >> n;
    std::cout << "Zbir cifara: " << zbir_cifara(n) << std::endl;
    return 0;
}
