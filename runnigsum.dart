List runningSum(List<int> nums) {
  List answer = [];
  int sum = 0;
  for (int i = 0; i < nums.length; i++) {
    for (int j = 0; j < i; j++) {
      sum = sum + nums[j];
      int value = sum;
      answer[i] = value;
    }
    
  }
  return answer;
}

void main(List<String> args) {
  List<int> nums = [1, 1, 1, 1, 1, 1];
  runningSum(nums);
}
