#include <iostream>

extern "C" int palindrom_rekurzivno(const char *s);

int main()
{
    std::string s;
    std::cin >> s;

    if (palindrom_rekurzivno(s.c_str()))
    {
        std::cout << "palindrom" << std::endl;
    }
    else
    {
        std::cout << "nije palindrom" << std::endl;
    }

    return 0;
}
