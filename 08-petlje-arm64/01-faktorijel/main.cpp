#include <iostream>

extern "C" unsigned faktorijel(unsigned n);

int main()
{
    unsigned n;
    std::cin >> n;
    std::cout << n << "! = " << faktorijel(n) << std::endl;
    return 0;
}
