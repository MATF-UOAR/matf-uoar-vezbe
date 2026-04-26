#include<iostream>


extern "C" unsigned novi_broj(unsigned);




int main()
{
    unsigned n;
    std::cin>>n;

    std::cout<<novi_broj(n)<<"\n";
    return 0;
}
