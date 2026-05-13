#include <iostream>

extern "C" int deljiv_sa_4(int x);

int main() {
    int x;
    std::cin >> x;

    if (deljiv_sa_4(x)) {
        std::cout << "Deljiv je" << std::endl;
    }
    else {
        std::cout << "Nije deljiv" << std::endl;
    }

    return 0;
}
