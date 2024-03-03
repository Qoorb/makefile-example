#include "gcd.h"

int gcd(int number1, int number2) 
{
    if (number2 != 0)
       return gcd(number2, number1 % number2);
    else 
       return number1;
}
