#include <iostream>
using namespace std;

int main()
{
	int number1 = 5, number2 = 10, temp;

        cout << "Numbers before swapping. " << endl;
        cout << "First Number = " << number1 << ", Second Number = " << number2 << endl;

	temp = number1;
	number1 = number2;
	number2 = temp;

	cout << "Numbers after swapping. " << endl;
	cout << "First Number = " << number1 << ", Second Number = " << number2 << endl;

        cout << "From a C++ Program" << endl;
	return 0;
}
