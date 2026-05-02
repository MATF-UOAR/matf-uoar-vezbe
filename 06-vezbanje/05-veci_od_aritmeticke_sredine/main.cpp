#include<iostream>
#include<vector>

extern "C" void veci_od_aritmeticke_sredine(unsigned*,int);



int main()
{
    int n;
    std::cin>>n;

    std::vector<unsigned> a(n);
    for(int i=0;i<n;i++)
	std::cin>>a[i];

    veci_od_aritmeticke_sredine(a.data(),n);
    
    for(int i=0;i<n;i++)
	std::cout<<a[i]<<" ";

    std::cout<<"\n";
    
    return 0;
}
