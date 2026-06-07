#include <iostream>
#include <string>

extern "C" unsigned broj_reci(const char *s);

int main()
{
    std::string s;
    std::getline(std::cin, s);

    std::cout << broj_reci(s.c_str()) << std::endl;

    return 0;
}
