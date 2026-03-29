#include <iostream>

extern "C" void sezona(int mesec);

int main()
{
    int mesec;
    std::cin >> mesec;
    sezona(mesec);
    return 0;
}
