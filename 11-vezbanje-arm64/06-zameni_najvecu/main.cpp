#include <iostream>

extern "C" unsigned zameni_najvecu(unsigned n, unsigned c);

int main()
{
    unsigned n;
    unsigned c;
    std::cin >> n >> c;

    std::cout << zameni_najvecu(n, c) << std::endl;

    return 0;
}
