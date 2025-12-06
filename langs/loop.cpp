#include <iostream>
#include <vector>
using namespace std;

int main()
{

    for (int i = 0; i < 5; i++)
    {
        cout << i << endl;
    }

    vector<string> fruits = {"apple", "banana", "cherry"};
    for (const auto &fruit : fruits)
    {
        cout << fruit << endl;
    }

    int j = 0;
    while (j < 5)
    {
        cout << j << endl;
        j++;
    }
}