#include <iostream>
#include <vector>

extern "C" unsigned long min_element(unsigned long *a, int n);

int main() {
    int n;
    std::cin >> n;

    std::vector<unsigned long> a(n);
    for (int i = 0; i < n; i++) {
        std::cin >> a[i];
    }

    unsigned long min = min_element(a.data(), n);

    std::cout << min << std::endl;

    return 0;
}