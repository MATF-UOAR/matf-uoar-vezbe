#include <iostream>
#include <vector>

extern "C" void zameni_min_i_max(int* niz, int n);

int main() {
    int n;
    std::cin >> n;

    std::vector<int> niz(n > 0 ? n : 0);
    for (int i = 0; i < n; i++) {
        std::cin >> niz[i];
    }

    zameni_min_i_max(niz.data(), n);

    for (int i = 0; i < n; i++) {
        std::cout << niz[i] << " ";
    }
    std::cout << std::endl;

    return 0;
}
