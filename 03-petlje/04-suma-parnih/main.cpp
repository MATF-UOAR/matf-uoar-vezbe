#include <iostream>

extern "C" unsigned suma_parnih(unsigned n);

int main()
{
    unsigned n;
    std::cin >> n;
    std::cout << suma_parnih(n) << std::endl;
    return 0;
}
