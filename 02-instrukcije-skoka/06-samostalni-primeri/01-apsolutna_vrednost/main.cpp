#include <iostream>

extern "C" int apsolutna_vrednost(int x);

int main()
{
    int x;
    std::cin >> x;
    std::cout << "|x| = " << apsolutna_vrednost(x) << std::endl;
    return 0;
}
