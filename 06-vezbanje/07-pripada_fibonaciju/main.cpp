#include<iostream>

extern "C" int pripada_fibonaciju(int);


int main()
{
    int n;
    std::cin>>n;

    int rez = pripada_fibonaciju(n);
    if(rez==-1)
	std::cout<<"Ne pripada fibonacijevom nizu!\n";
    else
	std::cout<<"indeks: "<<rez<<"\n";
    
    return 0;
}
