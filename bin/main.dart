// Trapping Rain Water
// Given n non-negative integers representing an elevation map where the width
// of each bar is 1, compute how much water it is able to trap after raining.
import 'dart:math';

/// https://assets.leetcode.com/uploads/2018/10/22/rainwatertrap.png
// The above elevation map is represented by array [0,1,0,2,1,0,1,3,2,1,2,1].
// In this case, 6 units of rain water (blue section) are being trapped.

// Example:
// Input: [0,1,0,2,1,0,1,3,2,1,2,1]
// Output: 6

List <int> findIndexOfMaxValue(List<int> towers, int maximumTower){
  List<int> result = [];
  for(int i = 0; i< towers.length; i++){
    if (towers[i] == maximumTower){
      result.add(i);
    };
  }
  return result;
}

int rainWater(List<int> towers){
  if (towers.isEmpty) return 0;

  List<int> indexesOfMaxHeight = [];
  int result;
  while(towers.any((int tower) => tower> 1)) {
    int maximumTower = towers.reduce(max);
     indexesOfMaxHeight = findIndexOfMaxValue(towers, maximumTower);
    for(int index in indexesOfMaxHeight){
      towers[index] = towers[index] - 1;
    }
    result = indexesOfMaxHeight.reduce((a,b) => b - a -1);
  }
  print(result + 1);
  return result + 1;
}

main() {
  rainWater([0,1,0,2,1,0,1,3,2,1,2,1]);
}
