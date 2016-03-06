#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

int main() {
    vector<int> vektor;
    int tal;

    while(cin >> tal) {
       vektor.push_back(tal);
    }

    sort(vektor.begin(), vektor.end());

    for (auto n : vektor) {
        cout << n << endl;
    }

    return 0;
}
