#include <iostream>

extern "C" void deljiv_4(int x);

int main()
{
    int x;
    std::cin >> x;
    deljiv_4(x);
    return 0;
}
