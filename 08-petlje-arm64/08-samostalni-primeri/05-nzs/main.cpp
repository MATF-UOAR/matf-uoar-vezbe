#include <iostream>

extern "C" unsigned nzs(unsigned a, unsigned b);

int main()
{
    unsigned a, b;
    std::cin >> a >> b;
    std::cout << "NZS(" << a << ", " << b << ") = " << nzs(a, b) << std::endl;
    return 0;
}
