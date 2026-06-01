#include <iostream>
#include <vector>

extern "C" int binarna_pretraga_rekurzivno(int *a, int levo, int desno, int x);

int main()
{
    int n;
    std::cin >> n;

    std::vector<int> a(n);
    for (int i = 0; i < n; i++)
    {
        std::cin >> a[i];
    }

    int x;
    std::cin >> x;

    std::cout << binarna_pretraga_rekurzivno(a.data(), 0, n - 1, x)
              << std::endl;
    return 0;
}
