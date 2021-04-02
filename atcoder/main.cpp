#include <iostream>
#include <sstream>
#include <string>
#include <vector>
#include <unordered_map>
#include <unordered_set>
#include <algorithm>

using namespace std;

using ull_t = unsigned long long;

void Print() { cout << endl; }

template <class Head, class... Args> void Print(Head &&head, Args&&... args)
{
    cout << head << ' ';
    Print(args...);
}

int main()
{
}
