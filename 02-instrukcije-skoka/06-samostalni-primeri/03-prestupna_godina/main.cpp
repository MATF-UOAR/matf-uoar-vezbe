#include <iostream>

extern "C" int je_prestupna(int godina);

int main()
{
    int godina;
    std::cin >> godina;

    if (je_prestupna(godina) == 1)
    {
        std::cout << "Prestupna godina\n";
    }
    else
    {
        std::cout << "Nije prestupna godina\n";
    }

    return 0;
}
