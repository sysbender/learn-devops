#include <iostream>
#include <string>
using namespace std;

int main()
{

    string str = "Hello world";

    // len
    cout << str.size() << endl;
    // concat
    cout << str + "!" << endl;

    // substr
    cout << str.substr(0, 5) << endl;

    // replace
    cout << str.replace(str.find("world"), 5, "John") << endl;

    // split - need addition code or library

    return 0;
}