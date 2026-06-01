#include <iostream>
#include <string>

extern "C" char najcesce_slovo(const char *s);

int main()
{
    std::string s;
    std::cin >> s;

    std::cout << najcesce_slovo(s.c_str()) << std::endl;
    return 0;
}
