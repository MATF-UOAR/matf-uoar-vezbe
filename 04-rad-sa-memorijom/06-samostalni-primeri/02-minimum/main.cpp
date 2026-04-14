#include <iostream>
#include <vector>

extern "C" int minimum(int* niz, int n);

int main() {
    int n;
    std::cin >> n;

    std::vector<int> niz(n > 0 ? n : 0);
    for (int i = 0; i < n; i++) {
        std::cin >> niz[i];
    }

    std::cout << minimum(niz.data(), n) << std::endl;

    return 0;
}
