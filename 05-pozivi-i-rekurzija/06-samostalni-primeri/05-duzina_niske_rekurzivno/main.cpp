#include <iostream>
#include <string>

extern "C" int duzina_niske_rekurzivno(const char *s);

int main()
{
    std::string s;
    std::cin >> s;

    std::cout << duzina_niske_rekurzivno(s.c_str()) << std::endl;
    return 0;
}
