#include<iostream>
#include<vector>

extern "C" void kvadriraj_negativni(int*,int);

int main()
{
    int n;
    std::cin>>n;
    std::vector<int> a(n);
    
    for(int i=0;i<n;i++)
	std::cin>>a[i];

    kvadriraj_negativni(a.data(),n);


    for(int i=0;i<n;i++)
	std::cout<<a[i]<<" ";
    
    
    return 0;
}
