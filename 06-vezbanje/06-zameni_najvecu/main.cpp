#include<iostream>

extern "C" unsigned zameni_najvecu(unsigned,unsigned);



int main()
{
    unsigned n,cifra;
    std::cin>>n>>cifra;
    
    std::cout<<zameni_najvecu(n,cifra)<<"\n";
    return 0;
}
