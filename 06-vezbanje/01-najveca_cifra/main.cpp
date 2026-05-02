#include<iostream>


extern "C" unsigned najveca_cifra(unsigned);



int main()
{
    unsigned n;
    std::cin>>n;


    std::cout<<najveca_cifra(n)<<"\n";
    return 0;
}
