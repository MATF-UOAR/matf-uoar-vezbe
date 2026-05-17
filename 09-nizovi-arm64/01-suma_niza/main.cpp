#include <iostream>
#include <vector>

extern "C" int suma_niza(int *a, int n);

int main() {
    int n;
    std::cin >> n;

    std::vector<int> a(n);
    for (int i = 0; i < n; i++) {
        std::cin >> a[i];
    }

    int suma = suma_niza(a.data(), n);

    std::cout << suma << std::endl;

    return 0;
}