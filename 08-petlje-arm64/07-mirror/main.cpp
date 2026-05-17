#include <iostream>

extern "C" unsigned mirror(unsigned n);
extern "C" void print_bits(unsigned n);

int main()
{
    unsigned n;
    std::cin >> n;

    print_bits(n);
    std::cout << std::endl;

    const unsigned m = mirror(n);
    print_bits(m);
    std::cout << std::endl;

    return 0;
}
