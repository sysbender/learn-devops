#include <iostream>
#include <map>
#include <unordered_map>

using namespace std;

int main()
{

    map<string, int> person;
    person["age"] = 23;
    person["salary"] = 2300;

    unordered_map<string, string> data;
    data["name"] = "John";

    for (const auto &p : person)
    {
        cout << p.first << " , " << p.second << endl;
    }

    return 0;
}