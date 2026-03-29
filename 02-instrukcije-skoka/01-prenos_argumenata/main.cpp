#include <iostream>

extern "C" int foo(int, int, int, int, int, int, int, int);

int main()
{
    std::cout << foo(1, 2, 3, 4, 5, 6, 7, 8) << std::endl;
    return 0;
}