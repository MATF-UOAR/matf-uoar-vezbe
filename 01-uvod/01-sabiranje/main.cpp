#include <iostream>

extern "C" int saberi(int a, int b);

/*
int saberi(int a, int b) {
    return a + b;
}
*/

int main() {
    int a, b;
    std::cin >> a >> b;
    std::cout << saberi(a, b) << std::endl;
    return 0;
}