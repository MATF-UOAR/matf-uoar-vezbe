#include <iostream>
#include <string>

extern "C" int duzina_niske(const char *s);

int main() {
    std::string s;
    std::cin >> s;

    std::cout << duzina_niske(s.c_str()) << std::endl;

    return 0;
}
