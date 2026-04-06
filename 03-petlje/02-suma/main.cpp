#include <iostream>

extern "C" unsigned suma(unsigned n);

int main()
{
    unsigned n;
    std::cin >> n;
    std::cout << suma(n) << std::endl;
    return 0;
}
