#include <iomanip>
#include <iostream>
#include <vector>

extern "C" float aritmeticka_sredina(int *a, int n);

int main() {
    int n;
    std::cin >> n;

    std::vector<int> a(n);
    for (int i = 0; i < n; i++) {
        std::cin >> a[i];
    }

    std::cout << std::fixed << std::setprecision(6);
    std::cout << aritmeticka_sredina(a.data(), n) << std::endl;

    return 0;
}
