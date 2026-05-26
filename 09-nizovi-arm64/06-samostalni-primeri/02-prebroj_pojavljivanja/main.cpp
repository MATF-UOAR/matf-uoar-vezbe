#include <iostream>
#include <vector>

extern "C" int prebroj_pojavljivanja(int *a, int n, int x);

int main() {
    int n;
    std::cin >> n;

    std::vector<int> a(n);
    for (int i = 0; i < n; i++) {
        std::cin >> a[i];
    }

    int x;
    std::cin >> x;

    std::cout << prebroj_pojavljivanja(a.data(), n, x) << std::endl;

    return 0;
}
