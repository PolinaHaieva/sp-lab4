#include <iostream>
#include "calculator.h"

int main() {
    Calculator calc;
    std::cout << "calc.Add(10.0, 20.0) = " << calc.Add(10.0, 20.0) << std::endl;
    std::cout << "calc.Sub(40.0, 30.0) = " << calc.Sub(40.0, 30.0) << std::endl;
    std::cout << "calc.Add(20.0, 30.0) = " << calc.Add(20.0, 30.0) << std::endl;
    return 0;
}
