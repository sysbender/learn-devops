#include <iostream>
#include <vector>
using namespace std;
int main()
{

    vector<string> fruits = {"apple", "banana", "cherry"};

    cout << fruits[0] << endl;
    cout << fruits.size() << endl;

    fruits.push_back("date");
    for (const auto &fruit : fruits)
    {
        cout << fruit << endl;
    }
}