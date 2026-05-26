#include <iostream>
#include <string>

extern "C" void obrni_nisku_rekurzivno(char *s);

int main()
{
    std::string s;
    std::cin >> s;

    obrni_nisku_rekurzivno(&s[0]);
    std::cout << s << std::endl;
    return 0;
}
