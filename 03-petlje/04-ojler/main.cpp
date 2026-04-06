#include <iostream>

extern "C" unsigned ojler(unsigned n);

int main()
{
    unsigned n;
    std::cin >> n;
    std::cout << ojler(n) << std::endl;
    return 0;
}
