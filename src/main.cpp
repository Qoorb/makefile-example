#include "gcd.h"
#include <iostream>

int main() 
{
    int num1, num2;

    std::cout << "Enter two positive integers: ";
    std::cin >> num1 >> num2;

    std::cout << "GCD of " << num1 << " & " << num2 << " is: " << gcd(num1, num2) << std::endl;

    return 0;
}
