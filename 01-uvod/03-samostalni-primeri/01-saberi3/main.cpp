#include <iostream>

extern "C" int saberi3(int a, int b, int c);

int main() {
    int a, b, c;
    std::cin >> a >> b >> c;
    std::cout << saberi3(a, b, c) << '\n';
    return 0;
}
