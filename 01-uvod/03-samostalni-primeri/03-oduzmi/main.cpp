#include <iostream>

extern "C" int oduzmi(int a, int b);

int main() {
    int a, b;
    std::cin >> a >> b;
    std::cout << oduzmi(a, b) << '\n';
    return 0;
}
