#include <iostream>
using namespace std;

int main()
{

    int age = 0;
    cout << "enter your age: ";
    cin >> age;
    if (age > 18)
    {
        cout << "adult \n";
    }
    else if (age == 18)
    {
        cout << "just 18 \n";
    }
    else
    {
        cout << "minor \n";
    }

    return 0;
}