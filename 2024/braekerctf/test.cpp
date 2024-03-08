#include <iostream>
#include <iomanip> 
using namespace std;

int main() {

	float total = 0;
    cout << setprecision(25); 
	// Sum these numbers to 0.9
	for (int i = 0; i < 9; i++)
		total += 0.1;
    float input;
    cin >> input;
    cout << total + 0.1 << endl;
    cout << total + input << endl;
    cout << (total + input == 1.0) << endl;

    return 0;
}
