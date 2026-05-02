#include<iostream>
#include<vector>

extern "C" unsigned aritmeticka_sredina(unsigned*,int);



int main()
{
    int n;
    std::cin>>n;
    std::vector<unsigned> a(n);


    for(int i=0;i<n;i++)
	std::cin>>a[i];


    std::cout<<aritmeticka_sredina(a.data(),n)<<"\n";
    
    return 0;
}
