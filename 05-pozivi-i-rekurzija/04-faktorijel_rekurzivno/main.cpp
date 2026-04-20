#include <iostream>

extern "C" unsigned faktorijel_rekurzivno(unsigned n);

int main()
{
    unsigned n;
    std::cin >> n;

    std::cout << n << "! = " << faktorijel_rekurzivno(n) << std::endl;
    return 0;
}
