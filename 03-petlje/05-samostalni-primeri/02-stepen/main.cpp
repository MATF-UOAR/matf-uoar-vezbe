#include <iostream>

extern "C" unsigned stepen(unsigned a, unsigned n);

int main()
{
    unsigned a, n;
    std::cin >> a >> n;
    std::cout << a << "^" << n << " = " << stepen(a, n) << std::endl;
    return 0;
}
