palindrom(List<int> num) {
  bool isPalindrome=true;
  for (int i = 0; i < num.length; i++) {
    for (int j = num.length; j > 0; j--) {
      if (num[i] == num[j -1]) {
        isPalindrome = true;
      } else {
        isPalindrome = false;
      }
      // if (i == j-1) {
      //   break;
      // }
    }
  }
  print(isPalindrome);
}

void main(List<String> args) {
  palindrom([7,5,8,5,7]);
}
