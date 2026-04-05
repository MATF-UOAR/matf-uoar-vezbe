#include <iostream>

extern "C" unsigned NZD(unsigned a, unsigned b);

int main()
{
    unsigned a, b;
    std::cin >> a >> b;
    std::cout << "NZD(" << a << ", " << b << ") = " << NZD(a, b) << std::endl;
    return 0;
}
