#include <iostream>

extern "C" unsigned najcesca_cifra(unsigned n);

int main()
{
    unsigned n;
    std::cin >> n;
    std::cout << najcesca_cifra(n) << std::endl;
    return 0;
}
