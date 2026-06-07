#include <iostream>
#include <vector>

extern "C" void zameni_min_i_max(int *a, int n);

int main()
{
    int n;
    std::cin >> n;

    std::vector<int> a(n);
    for (int i = 0; i < n; i++)
    {
        std::cin >> a[i];
    }

    zameni_min_i_max(a.data(), n);

    for (int i = 0; i < n; i++)
    {
        std::cout << a[i] << " ";
    }
    std::cout << std::endl;

    return 0;
}
