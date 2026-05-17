#include <iostream>

extern "C" unsigned secret(unsigned n);

int main()
{
    unsigned n;
    std::cin >> n;
    std::cout << "secret(" << n << ") = " << secret(n) << std::endl;
    return 0;
}
