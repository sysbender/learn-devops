
#include <fstream>
#include <iostream>
using namespace std;

int main()
{

    const string filename = "file.txt";
    // check file

    ifstream f1(filename);

    if (f1.good())
    {
        cout << filename << " exist " << endl;
    }
    else
    {
        cout << filename << " does not exist " << endl;
    }

    
    return 0;
}
