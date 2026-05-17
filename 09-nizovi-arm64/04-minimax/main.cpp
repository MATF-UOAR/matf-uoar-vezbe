#include <iostream>
#include <vector>

extern "C" void minimax(int *a, int n, int &pmin, int &pmax);

int main() {
    int n;
    std::cin >> n;

    std::vector<int> a(n);
    for (int i = 0; i < n; i++) {
        std::cin >> a[i];
    }

    int min, max;
    minimax(a.data(), n, min, max);

    std::cout << min << " " << max << std::endl;

    return 0;
}