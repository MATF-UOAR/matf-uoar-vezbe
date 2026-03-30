#include <iostream>

using namespace std;


extern "C" void deljenje_int(int a, int b, int &kolicnik, int &ostatak);

extern "C" void deljenje_unsigned(unsigned a, unsigned b, unsigned &kolicnik, unsigned &ostatak);

int main()
{
    int x, y;
    cout << "[int]\n";
    cout << "Unesite a i b: ";
    cin >> x >> y;
    int kolicnik, ostatak;
    deljenje_int(x, y, kolicnik, ostatak);
    cout << "Rezultat: " << x << " / " << y << " = " << kolicnik
         << ", " << x << " % " << y << " = " << ostatak << "\n\n";

    unsigned ux, uy;
    cout << "[unsigned]\n";
    cout << "Unesite a i b: ";
    cin >> ux >> uy;
    unsigned ukolicnik, uostatak;
    deljenje_unsigned(ux, uy, ukolicnik, uostatak);
    cout << "Rezultat: " << ux << " / " << uy << " = " << ukolicnik
         << ", " << ux << " % " << uy << " = " << uostatak << endl;

    return 0;
}
