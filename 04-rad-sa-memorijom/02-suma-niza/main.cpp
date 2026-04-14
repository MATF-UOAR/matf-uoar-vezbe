#include <iostream>
#include <vector>

extern "C" int suma_niza(int* niz, int n);

int main() {
    int n;
    std::cin >> n;

    std::vector<int> niz(n);
    for (int i = 0; i < n; i++) {
        std::cin >> niz[i];
    }

    std::cout << suma_niza(niz.data(), n) << std::endl;

    return 0;
}