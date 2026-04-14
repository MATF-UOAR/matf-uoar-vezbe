#include <iostream>
#include <vector>

extern "C" void obrni(int* niz, int n);

int main() {
    int n;
    std::cin >> n;

    std::vector<int> niz(n);
    for (int i = 0; i < n; i++) {
        std::cin >> niz[i];
    }

    obrni(niz.data(), n);

    for (int i = 0; i < n; i++) {
        std::cout << niz[i] << " ";
    }
    std::cout << std::endl;

    return 0;
}