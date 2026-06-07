#include <iostream>
#include <vector>

extern "C" int skalarni_proizvod(int *a, int *b, int n);

int main()
{
    int n;
    std::cin >> n;

    std::vector<int> a(n);
    std::vector<int> b(n);

    for (int i = 0; i < n; i++)
    {
        std::cin >> a[i];
    }
    for (int i = 0; i < n; i++)
    {
        std::cin >> b[i];
    }

    std::cout << skalarni_proizvod(a.data(), b.data(), n) << std::endl;

    return 0;
}
