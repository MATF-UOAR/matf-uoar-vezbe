#include <iomanip>
#include <iostream>

extern "C" float saberi_float(float a, float b);
extern "C" double saberi_double(double a, double b);

int main() {
    float af, bf;
    std::cin >> af >> bf;

    double ad, bd;
    std::cin >> ad >> bd;

    std::cout << std::fixed << std::setprecision(6);
    std::cout << saberi_float(af, bf) << std::endl;
    std::cout << saberi_double(ad, bd) << std::endl;

    return 0;
}
