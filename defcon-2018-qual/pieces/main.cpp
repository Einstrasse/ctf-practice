#include <algorithm>
#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main() {
	vector<int> pm;

	pm.push_back(1);
	pm.push_back(2);
	pm.push_back(3);
	pm.push_back(4);
	pm.push_back(5);
	pm.push_back(6);
	pm.push_back(7);
	pm.push_back(8);


	do {
		
		char cmd[512];
		sprintf(cmd, "cat pre_broken fragment_%d.dat fragment_%d.dat fragment_%d.dat fragment_%d.dat fragment_%d.dat fragment_%d.dat fragment_%d.dat fragment_%d.dat post_broken > test_bin.elf", pm[0], pm[1], pm[2], pm[3], pm[4], pm[5], pm[6], pm[7]);
		system(cmd);
		system("chmod +x ./test_bin.elf");
		int ret = system("./test_bin.elf 2>/dev/null");
		if (ret == 0) {
			cout << "Success pattern!\n";
			for (size_t i=0; i < pm.size(); i++) {
				cout << pm[i];
			}
			cout << endl;	
		}
		
		system("rm ./test_bin.elf");
	} while(next_permutation(pm.begin(), pm.end()));
}