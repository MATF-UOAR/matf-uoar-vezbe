#include <iostream>
#include <vector>

extern "C" int linearna_pretraga(int *a, int n, int x);

int main() {
    int n;
    std::cin >> n;

    std::vector<int> a(n);
    for (int i = 0; i < n; i++) {
        std::cin >> a[i];
    }

    int x;
    std::cin >> x;

    int index = linearna_pretraga(a.data(), n, x);

    std::cout << index << std::endl;

    return 0;
}
