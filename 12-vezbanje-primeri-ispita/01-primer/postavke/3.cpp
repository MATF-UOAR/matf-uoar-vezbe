#include <iostream>
#include <string>
using namespace std;

extern "C" int ocisti(char *s);

int main()
{
    string s;
    getline(cin, s);
    int r = ocisti(s.data());
    cout << s << "\n"
         << r << "\n";
    return 0;
}
