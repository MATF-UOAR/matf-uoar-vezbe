#include <iostream>

extern "C" unsigned najveca_cifra(unsigned n);

int main()
{
    unsigned n;
    std::cin >> n;

    std::cout << najveca_cifra(n) << std::endl;

    return 0;
}
