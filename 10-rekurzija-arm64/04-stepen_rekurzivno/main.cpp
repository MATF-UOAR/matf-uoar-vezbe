#include <iostream>

extern "C" unsigned stepen_rekurzivno(unsigned a, unsigned n);

int main()
{
    unsigned a, n;
    std::cin >> a >> n;

    std::cout << a << "^" << n << " = " << stepen_rekurzivno(a, n) << std::endl;
    return 0;
}
