#include <iostream>

extern "C" unsigned prost(unsigned n);

int main()
{
    unsigned n;
    std::cin >> n;

    if (prost(n)) {
        std::cout << "Broj je prost" << std::endl;
    }
    else {
        std::cout << "Broj nije prost" << std::endl;
    }

    return 0;
}
