#include <iostream>
#include <vector>

extern "C" int max_element(int *a, int n);

int main() {
    int n;
    std::cin >> n;

    std::vector<int> a(n);
    for (int i = 0; i < n; i++) {
        std::cin >> a[i];
    }

    int max = max_element(a.data(), n);

    std::cout << max << std::endl;

    return 0;
}