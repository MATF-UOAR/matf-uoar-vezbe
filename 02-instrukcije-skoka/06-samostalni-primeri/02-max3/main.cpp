#include <iostream>

extern "C" int max3(int x, int y, int z);

int main()
{
    int x, y, z;
    std::cin >> x >> y >> z;
    std::cout << "max3(" << x << ", " << y << ", " << z << ") = "
              << max3(x, y, z) << std::endl;
    return 0;
}
