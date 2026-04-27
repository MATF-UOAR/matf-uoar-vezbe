#include <iostream>
#include <string>

extern "C" void ispisi_puta(const char *s, unsigned n);

int main()
{
    unsigned n;
    std::string s;

    std::cin >> n >> s;
    ispisi_puta(s.c_str(), n);

    return 0;
}
