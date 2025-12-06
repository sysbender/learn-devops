#include <iostream>
using namespace std;
void greet(string name = "world")
{
    cout << "Hello " << name << "!" << endl;
}

int add(int a, int b)
{
    return a + b;
}
int main()
{
    greet();

    greet("John");

    cout << add(3, 4) << endl;
    return 0;
}