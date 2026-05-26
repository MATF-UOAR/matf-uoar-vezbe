#include <iostream>
#include <vector>

extern "C" void minimax(short *a, int n, short &pmin, short &pmax);

int main() {
    int n;
    std::cin >> n;

    std::vector<short> a(n);
    for (int i = 0; i < n; i++) {
        std::cin >> a[i];
    }

    short min, max;
    minimax(a.data(), n, min, max);

    std::cout << min << " " << max << std::endl;

    return 0;
}
