#include <iostream>

extern "C" unsigned nzd_rekurzivno(unsigned a, unsigned b);

int main()
{
    unsigned a, b;
    std::cin >> a >> b;

    std::cout << "NZD(" << a << ", " << b << ") = "
              << nzd_rekurzivno(a, b) << std::endl;
    return 0;
}
