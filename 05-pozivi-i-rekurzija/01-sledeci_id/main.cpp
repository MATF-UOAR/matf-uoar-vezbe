#include <iostream>

extern "C" unsigned sledeci_id();

int main()
{
    for (int i = 0; i < 4; i++)
    {
        std::cout << sledeci_id() << std::endl;
    }

    return 0;
}
