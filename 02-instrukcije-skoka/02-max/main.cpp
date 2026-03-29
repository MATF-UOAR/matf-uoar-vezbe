#include <iostream>

extern "C" int max(int x, int y);

int main()
{
    int x, y;
    std::cin >> x >> y;
    std::cout << "max(" << x << ", " << y << ") = " << max(x, y) << std::endl;
    return 0;
}