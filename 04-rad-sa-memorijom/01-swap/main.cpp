#include <iostream>

extern "C" void zameni(int &a, int &b);
// extern "C" void zameni(int *a, int *b);

int main()
{
    int a, b;
    std::cin >> a >> b;
    std::cout << "a=" << a << " b=" << b << std::endl;
    zameni(a, b);
    std::cout << "a=" << a << " b=" << b << std::endl;
    return 0;
}