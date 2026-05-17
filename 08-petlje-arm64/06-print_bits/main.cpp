#include <iostream>

extern "C" void print_bits(unsigned n);

int main()
{
    unsigned n;
    std::cin >> n;

    print_bits(n);
    std::cout << std::endl;

    return 0;
}
