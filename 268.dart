int missingNumber(List<int> nums) {
  nums.sort();
  // print(nums);
  int intNumber = -1;
  int number = -1;
  int flag = 0;
  bool isMissing = false;
    if (!nums.contains(0)) {
    return 0;
}
  for (int i = 0; i < nums.length; i++) {
    if (i == nums[i]) {
      flag = 1;
      number = nums[i]+1;
    } else {
      flag = 0;
      break;
    }
  }
  // if (flag == 1) {
  //   // print(nums.length);
  //   for (int i = 0; i < nums.length; i++) {
  //     int n = nums[0];
  //     if (n != nums[i]) {
  //       isMissing = true;
  //       number = nums[i];
  //       break;
  //     } else {
  //       n = nums[i + 1];
  //     }
  //   }
  // }
  return number;
}

void main(List<String> args) {
  List<int> nums = [9, 6, 4, 2, 3, 5, 7, 0, 1];
  List<int> nums1 = [3,0,1];

  print(missingNumber(nums1));
}
