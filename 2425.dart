void main(List<String> args) {
  int commonFactors(int a, int b) {
    List<int> answer = [];
    for (int i = 0; i <= a; i++) {
      if (a % i == 0 && b % i == 0) {
        answer.add(i);
      }
    }
    return answer.length;
  }

  print(commonFactors(10, 15));
}
